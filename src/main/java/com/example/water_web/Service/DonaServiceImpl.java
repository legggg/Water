package com.example.water_web.Service;

import com.example.water_web.Mapper.DonaMapper;
import com.example.water_web.Vo.DonaVo;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DonaServiceImpl implements DonaService {

    @Autowired
    private DonaMapper dao;

    // 카테고리별 상품 리스트
    @Override
    public List<DonaVo> list(int cntr_category) throws Exception {
        return dao.list(cntr_category);
    }

    // 상품 조회
    @Override
    public DonaVo donasView(int cntr_sn) throws Exception {
        return dao.donasView(cntr_sn);
    }
}
