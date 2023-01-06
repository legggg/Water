package com.example.water_web.Service;

import com.example.water_web.Vo.DonaVo;
import com.example.water_web.Vo.GatherDonaVo;
import com.example.water_web.Vo.MakeDonaVo;

import java.util.List;

public interface DonaService {

    // 전체 상품 리스트
    List<DonaVo> donainglistall(DonaVo vo) throws Exception;

    // 카테고리별 기부 리스트
    List<DonaVo> donainglist(int cntr_category) throws Exception;

    // 기부 조회
    DonaVo donasView(int cntr_sn) throws Exception;

    // 기부금 등록
    void makeDona(MakeDonaVo vo) throws Exception;

    // 기부금 모으기
    void gatherDona(GatherDonaVo vo) throws Exception;

    // 현재 기부액 조회
    DonaVo magaDona(int cntr_sn) throws Exception;

    DonaVo percent(int cntr_sn) throws Exception;
}
