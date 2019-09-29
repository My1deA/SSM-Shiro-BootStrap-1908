package cn.T4.mapper;

import cn.T4.domain.Permission;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PermissionMapper {

    void save(Permission permission);
    void delete(Integer id);
    void update(Permission permission);
    //查询
    Permission select(Integer id);
    List<Permission> selectAllPermission();
}
