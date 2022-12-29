package com.example.water_web.Mapper;

import com.example.water_web.Vo.CtgryVo;
import com.example.water_web.Vo.DonaVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminMapper {

    //카테고리
    List<CtgryVo> ctgry() throws Exception;

    // 상품등록
    void register(DonaVo vo) throws Exception;
}
