package cn.T4.service;

import cn.T4.domain.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

public interface UserService {
    //增
    void insertUser(User user);

    //删
    void deleteUserById(Integer id);

    //改
    void updateUser(User user);

    //查
    User selectUserById(Integer id);

    User selectUserByUsername(String username);

    List<User> selectAllUser();

    Set<String> selectR_nameByUsername(String username);

    //将 用户id 与 role id想关联
    void connectUserAndRole(Integer u_id, Integer r_id);

    //将用户id 与 role id
    void disConnectUserAndRole(Integer u_id,Integer r_id);



    //根据用户名查询所有的角色信息
    Set<String> selectRnameByUsername(String username);

    //查询所有角色的方法
    Set<String> selectRoleAllRname();
}

