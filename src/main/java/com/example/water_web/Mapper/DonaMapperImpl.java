//package com.example.water_web.Mapper;
//
//import com.example.water_web.Vo.DonaVo;
//import org.apache.ibatis.session.SqlSession;
//import org.springframework.beans.factory.annotation.Autowired;
//
//import java.util.List;
//
//public class DonaMapperImpl implements DonaMapper {
//
//    @Autowired
//    private SqlSession sql;
//
//    private static String namespace = "com.exmaple.water_web.Mapper.DonaMapper";
//
//    @Override
//    public List<DonaVo> list(int cntr_category) {
//        return sql.selectList(namespace + ".list", cntr_category);
//    }
//}
