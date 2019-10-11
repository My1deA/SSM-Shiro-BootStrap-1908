package cn.T4.shiro;

import cn.T4.domain.User;
import cn.T4.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class UserRealm extends AuthorizingRealm {

    @Autowired
    private UserService userService;

    /**
     * 认证
     * @param token
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        System.out.println(token);
        //得到用户信息
        UsernamePasswordToken upToken= (UsernamePasswordToken) token;
        String username=upToken.getUsername();

        //判断当前用户在数据库是否存在
        User user=userService.selectUserByUsername(username);
        System.out.println(user);

        if(user==null){
            //如果用户名不存在 UnknownAccountException
            System.out.println(user);
            throw new UnknownAccountException("用户名不存在");
        }else if(user.getStatus()==0){
            //用户状态 锁定 LockedAccountException
            throw new LockedAccountException("该用户已被锁定");
        }

        //密码比较 shiro帮我们完成  错误会抛出IncorrectCredentialsException异常
        //Object principal 身份/用户名, Object credentials 证明/密码, String realmName
        Object principal=username;
        Object credentials=user.getPassword();//数据库查询出来的密码
        ByteSource credentialsSalt=ByteSource.Util.bytes(username);//盐
        AuthenticationInfo info =new SimpleAuthenticationInfo(principal, credentials,  credentialsSalt, getName());
        return info;
    }

    /**
     * 授权
     * @param principals
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {

        System.out.println(principals);
        //得到用户名
        String username= (String) principals.getPrimaryPrincipal();
       /* System.out.println(username+"123");*/
        //得到角色
        Set<String> roles=userService.selectR_nameByUsername(username);
        Iterator<String> it1= roles.iterator();
        while (it1.hasNext()) {
            String str = it1.next();
            System.out.println(str);
        }

        if(roles.contains("admin")){
            /*roles=userService.selectRoleAllRname();*/
            roles.remove("admin");
        }

        //得到权限
        Set<String> permissions=userService.selectP_nameByUsername(username);


      /*  Iterator<String> it = roles.iterator();
        while (it.hasNext()) {
            String str = it.next();
            System.out.println(str);
        }*/

        //给当前用户赋予相应的角色
        SimpleAuthorizationInfo info =new SimpleAuthorizationInfo(roles);
        info.addStringPermissions(permissions);

        return info;
    }


    /**
     * 清除缓存
     */
    public void clearCache() {
        PrincipalCollection principals = SecurityUtils.getSubject().getPrincipals();
        super.clearCache(principals);
    }


    public static void main(String[] args) {
        //注册时对数据库 密码进行加密
        String username="Permission";//用户名
        Object credentials="1";//密码
        String hashAlgorithmName="md5";//加密算法
        int hashIterations=2;//算法的迭代次数
        Object salt=ByteSource.Util.bytes(username);//加盐
        Object reuslt=new SimpleHash(hashAlgorithmName,credentials,salt,hashIterations);
        System.out.println(reuslt);
    }

}
