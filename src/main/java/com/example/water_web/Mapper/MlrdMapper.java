package com.example.water_web.Mapper;

import com.example.water_web.Vo.DonaVo;
import com.example.water_web.Vo.MlrdVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MlrdMapper {

    // 기부 조회 tb_mlrd 가져오기
    List<MlrdVo> viewMlrd(int cntr_sn) throws Exception;

}
