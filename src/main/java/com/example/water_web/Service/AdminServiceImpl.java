package com.example.water_web.Service;

import com.example.water_web.Mapper.AdminMapper;
import com.example.water_web.Mapper.DonaMapper;
import com.example.water_web.Vo.CtgryVo;
import com.example.water_web.Vo.DonaVo;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AdminServiceImpl implements AdminService{

    @Autowired
    private AdminMapper dao;

    // 카테고리
    public List<CtgryVo> ctgry() throws Exception {
        return dao.ctgry();
    }

    // 상품등록
    public void register(DonaVo vo) throws Exception {
        dao.register(vo);
    }

}
