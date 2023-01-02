package com.example.water_web.Service;

import com.example.water_web.Vo.DonaVo;

import java.util.List;

public interface DonaService {
    // 카테고리별 기부 리스트
    List<DonaVo> donainglist(int cntr_category) throws Exception;

    // 기부 조회
    DonaVo donasView(int cntr_sn) throws Exception;
}
