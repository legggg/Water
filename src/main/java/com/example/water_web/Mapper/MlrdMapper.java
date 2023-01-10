package com.example.water_web.Mapper;

import com.example.water_web.Vo.ComtVo;
import com.example.water_web.Vo.DonaVo;
import com.example.water_web.Vo.MlrdVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MlrdMapper {

    // 기부 조회 tb_mlrd 가져오기
    List<MlrdVo> viewMlrd(int cntr_sn) throws Exception;

    // 댓글 작성
    void comtRegist(ComtVo comt) throws Exception;

    // 댓글 리스트
    List<ComtVo> comtList(int cntr_sn) throws Exception;

}
