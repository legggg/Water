package com.example.water_web.Service;

import com.example.water_web.Mapper.MlrdMapper;
import com.example.water_web.Vo.DonaVo;
import com.example.water_web.Vo.MlrdVo;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MlrdServiceImpl implements MlrdService {

    @Autowired
    private MlrdMapper dao;

    // 기부 조회
    @Override
    public List<MlrdVo> viewMlrd(int cntr_sn) throws Exception {
        return dao.viewMlrd(cntr_sn);
    }
}
