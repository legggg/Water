package com.example.water_web.Service;

import com.example.water_web.Vo.CtgryVo;

import java.util.List;

public interface AdminService {

    //카테고리
    List<CtgryVo> ctgry() throws Exception;
}
