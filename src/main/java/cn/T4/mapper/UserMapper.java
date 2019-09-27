package cn.T4.mapper;

import cn.T4.domain.User;
import org.springframework.stereotype.Repository;

import java.util.Set;

@Repository
public interface UserMapper {
    //增
    void insertUser(User user);

    //删
    void deleteUserById(Integer id);

    //改
    void updateUser(User user);

    //查
    User selectUserById(Integer id);

    User selectUserByUsername(String username);

    //根据用户名查询所有的角色信息
    Set<String> selectRnameByUsername(String username);

    //查询所有角色的方法
    Set<String> selectRoleAllRname();

}
