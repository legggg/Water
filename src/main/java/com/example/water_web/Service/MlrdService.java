package com.example.water_web.Service;

import com.example.water_web.Vo.ComtVo;
import com.example.water_web.Vo.DonaVo;
import com.example.water_web.Vo.MlrdVo;

import java.util.List;

public interface MlrdService {

    // 기부 조회
    List<MlrdVo> viewMlrd(int cntr_sn) throws Exception;

    // 댓글 작성
    void comtRegist(ComtVo comt) throws Exception;

    // 댓글 리스트
    List<ComtVo> comtList(int cntr_sn) throws Exception;
}
