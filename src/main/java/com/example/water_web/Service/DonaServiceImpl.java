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

    @Override
    public List<DonaVo> list(int cntr_category) throws Exception {
        return dao.list(cntr_category);
    }
}
