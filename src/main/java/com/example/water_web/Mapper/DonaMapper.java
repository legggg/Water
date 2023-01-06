package com.example.water_web.Mapper;

import com.example.water_web.Vo.DonaVo;
import com.example.water_web.Vo.GatherDonaVo;
import com.example.water_web.Vo.MakeDonaVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DonaMapper {

    // 전체 상품 리스트
    List<DonaVo> donainglistall(DonaVo vo);

    // 카테고리별 상품 리스트
    List<DonaVo> donainglist(int cntr_category);

    // 상품 조회
    DonaVo donasView(int cntr_sn);

    // 기부금 등록
    void makeDona(MakeDonaVo vo) throws Exception;

    // 기부금 모으기
    void gatherDona(GatherDonaVo vo) throws Exception;
}
