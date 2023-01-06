package com.example.water_web.Service;

import com.example.water_web.Mapper.DonaMapper;
import com.example.water_web.Vo.DonaVo;
import com.example.water_web.Vo.GatherDonaVo;
import com.example.water_web.Vo.MakeDonaVo;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
@RequiredArgsConstructor
public class DonaServiceImpl implements DonaService {

    @Autowired
    private DonaMapper dao;

    // 전체 상품 리스트
    @Override
    public List<DonaVo> donainglist(int cntr_category) throws Exception {
        return dao.donainglist(cntr_category);
    }

    // 카테고리별 상품 리스트
    @Override
    public List<DonaVo> donainglistall(DonaVo vo) throws Exception {
        return dao.donainglistall(vo);
    }

    // 기부 조회
    @Override
    public DonaVo donasView(int cntr_sn) throws Exception {
        return dao.donasView(cntr_sn);
    }

    // 기부금 등록
    @Override
    public void makeDona(MakeDonaVo vo) throws Exception {
        int btr_sn = vo.getBtr_sn();
        vo.setRgtr_id(btr_sn);
        vo.setRgtr_dt(LocalDateTime.now());

        dao.makeDona(vo);
    }

    // 기부금 모으기
    public void gatherDona(GatherDonaVo vo) throws Exception {
        dao.gatherDona(vo);
    }
}
