package cn.T4.mapper;

import cn.T4.domain.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
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

    List<User> selectAllUser();


    /*以下是自己标注*/
    //通过多对多关系查询角色
    Set<String> selectR_nameByUsername(String username);

    //将 用户id 与 role id想关联
    void connectUserAndRole(@Param("u_id") Integer u_id, @Param("r_id") Integer r_id);

    //将用户id 与 role id
    void disConnectUserAndRole(@Param("u_id")Integer u_id,@Param("r_id")Integer r_id);


    //demo 根据用户名查询所有的角色信息
    Set<String> selectRnameByUsername(String username);//直接

    //查询所有角色的方法
    Set<String> selectRoleAllRname();
    //demo
}
