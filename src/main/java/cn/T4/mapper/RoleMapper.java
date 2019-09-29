package cn.T4.mapper;

import cn.T4.domain.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

public interface RoleMapper {
    //保存
    void save(Role role);

    void delete(Integer id);

    void update(Role role);

    Role select(Integer id);

    Role selectRoleByR_name(String r_name);

    List<Role> selectAllRole();

    /*根据role id 来 对应的 权限 查询 */
    Set<String> selectPermisisonByR_name(String r_name);

    /*让role 增加相应的权限 */
    void connectRoleAndPermission(@Param("r_id") Integer r_id,@Param("p_id")Integer p_id);


    /*让role 减少相应的权限*/
    void disConnectRoleAndPermission(@Param("r_id") Integer r_id,@Param("p_id") Integer p_id);

}
