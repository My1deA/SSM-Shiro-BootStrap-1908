package cn.T4.service.Impl;

import cn.T4.domain.Resources;
import cn.T4.mapper.ResourceMapper;
import cn.T4.service.ResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResourceServiceImpl implements ResourceService {
    @Autowired
    private ResourceMapper resourceMapper;
    @Override
    public List<Resources> selectAllByStatusAndSortNumAsc() {
        return resourceMapper.selectAllByStatusAndSortNumAsc();
    }
}
