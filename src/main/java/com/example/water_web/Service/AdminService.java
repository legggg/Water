package com.example.water_web.Service;

import com.example.water_web.Vo.CtgryVo;
import com.example.water_web.Vo.DonaVo;

import java.util.List;

public interface AdminService {

    // 카테고리
    List<CtgryVo> ctgry() throws Exception;

    // 기부 등록
    void register(DonaVo vo) throws Exception;

    // 기부 목록
    List<DonaVo> donaslist() throws Exception;

    // 기부 조회
    DonaVo donasView(int cntr_sn) throws Exception;

    // 기부 수정
    void donasModify(DonaVo vo) throws Exception;

    // 기부 삭제
    void donasDelete(int cntr_sn) throws Exception;
}
