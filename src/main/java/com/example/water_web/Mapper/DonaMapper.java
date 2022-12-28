package com.example.water_web.Mapper;

import com.example.water_web.Vo.DonaVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DonaMapper {
    // 카테고리별 상품 리스트
    List<DonaVo> list(int cntr_category);

    // 상품 조회
    DonaVo donasView(int cntr_sn);
}
