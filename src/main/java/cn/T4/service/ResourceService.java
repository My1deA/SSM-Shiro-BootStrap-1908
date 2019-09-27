package cn.T4.service;

import cn.T4.domain.Resources;

import java.util.List;

public interface ResourceService {
    List<Resources> selectAllByStatusAndSortNumAsc();
}
