package com.example.water_web.Mapper;

import com.example.water_web.Vo.DonaVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DonaMapper {
    List<DonaVo> list(int cntr_category);
}
