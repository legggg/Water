package com.example.water_web.Service;

import com.example.water_web.Vo.CtgryVo;
import com.example.water_web.Vo.DonaVo;

import java.util.List;

public interface AdminService {

    // 카테고리
    List<CtgryVo> ctgry() throws Exception;

    // 상품등록
    void register(DonaVo vo) throws Exception;
}
