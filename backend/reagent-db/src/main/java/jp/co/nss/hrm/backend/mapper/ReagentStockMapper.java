package jp.co.nss.hrm.backend.mapper;

import java.util.List;
import jp.co.nss.hrm.backend.model.ReagentStock;
import jp.co.nss.hrm.backend.model.ReagentStockExample;
import org.apache.ibatis.annotations.Param;

public interface ReagentStockMapper {
    long countByExample(ReagentStockExample example);

    int deleteByExample(ReagentStockExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ReagentStock record);

    int insertSelective(ReagentStock record);

    List<ReagentStock> selectByExample(ReagentStockExample example);

    ReagentStock selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ReagentStock record, @Param("example") ReagentStockExample example);

    int updateByExample(@Param("record") ReagentStock record, @Param("example") ReagentStockExample example);

    int updateByPrimaryKeySelective(ReagentStock record);

    int updateByPrimaryKey(ReagentStock record);
}