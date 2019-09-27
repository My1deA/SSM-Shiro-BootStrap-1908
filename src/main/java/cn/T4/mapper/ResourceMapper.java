package cn.T4.mapper;

import cn.T4.domain.Resources;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ResourceMapper {

    List<Resources> selectAllByStatusAndSortNumAsc();
}
