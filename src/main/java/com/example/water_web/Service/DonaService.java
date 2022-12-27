package com.example.water_web.Service;

import com.example.water_web.Vo.DonaVo;

import java.util.List;

public interface DonaService {

    List<DonaVo> list(int cntr_category) throws Exception;
}
