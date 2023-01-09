package com.example.water_web.Service;

import com.example.water_web.Vo.DonaVo;
import com.example.water_web.Vo.MlrdVo;

import java.util.List;

public interface MlrdService {

    // 기부 조회
    MlrdVo viewMlrd(int cntr_sn) throws Exception;

}
