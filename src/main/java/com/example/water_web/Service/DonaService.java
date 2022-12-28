package com.example.water_web.Service;

import com.example.water_web.Vo.DonaVo;

import java.util.List;

public interface DonaService {
    // 카테고리별 상품 리스트
    List<DonaVo> list(int cntr_category) throws Exception;

    // 상품 조회
    DonaVo donasView(int cntr_sn) throws Exception;
}
