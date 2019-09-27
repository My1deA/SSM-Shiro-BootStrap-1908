package cn.T4.credentials;

import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.cache.CacheManager;

import java.util.concurrent.atomic.AtomicInteger;

public class MyHashedCredentialsMatcher extends HashedCredentialsMatcher {
    private Cache<String, AtomicInteger> passwordRetryCache;

    //获取ehcache中的自定义缓存
    public MyHashedCredentialsMatcher(CacheManager cacheManager){
        passwordRetryCache=cacheManager.getCache("passwordRetryCache");
    }

    //自定义锁定 错误5次会报错
    @Override
    public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {

        String username= (String) token.getCredentials();
        //重复登录次数
        AtomicInteger retryCount=passwordRetryCache.get(username);

        if(retryCount==null){
            retryCount=new AtomicInteger(0);
            passwordRetryCache.put(username,retryCount);
        }
        if(retryCount.incrementAndGet()>5){
            //登录次数异常
            throw new ExcessiveAttemptsException();
        }

        boolean matches=super.doCredentialsMatch(token, info);
        if(matches){
            passwordRetryCache.remove(username);
        }

        return matches;
    }
}
