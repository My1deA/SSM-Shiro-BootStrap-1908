package cn.T4.service.Impl;

import cn.T4.domain.User;
import cn.T4.mapper.UserMapper;
import cn.T4.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public void insertUser(User user) {
        userMapper.insertUser(user);
    }

    @Override
    public void deleteUserById(Integer id) {
        userMapper.deleteUserById(id);
    }

    @Override
    public void updateUser(User user) {
        userMapper.updateUser(user);
    }

    @Override
    public User selectUserById(Integer id) {
        return userMapper.selectUserById(id);
    }

    @Override
    public User selectUserByUsername(String username) {
        return userMapper.selectUserByUsername(username);
    }

    @Override
    public List<User> selectAllUser() {
        return userMapper.selectAllUser();
    }

    @Override
    public Set<String> selectR_nameByUsername(String username) {
        return userMapper.selectR_nameByUsername(username);
    }

    @Override
    public void connectUserAndRole(Integer u_id, Integer r_id) {
        userMapper.connectUserAndRole(u_id,r_id);
    }

    @Override
    public void disConnectUserAndRole(Integer u_id, Integer r_id) {
        userMapper.disConnectUserAndRole(u_id,r_id);
    }



    @Override
    public Set<String> selectRnameByUsername(String username) {
        return userMapper.selectRnameByUsername(username);
    }

    @Override
    public Set<String> selectRoleAllRname() {
        return userMapper.selectRoleAllRname();
    }
}
