package com.example.water_web.Mapper;

import com.example.water_web.Vo.UserVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserMapper {
    List<UserVo> getUserList(Integer sn); // User 테이블 가져오기
    void insertUser(UserVo userVo); // 회원가입
    UserVo getUserByEmail(UserVo userVo);    // 회원 정보 가져오기
    UserVo getUserBySn(Integer mbr_sn);
    UserVo getUserById(String mbr_id);
    void updateUser(UserVo userVo); // 회원 정보 수정
    void deleteUser(int mbr_sn); // 회원 탈퇴
    int idCheck(String mbr_id); //아이디 중복검사
    void lockMemberLogin(UserVo userVo);
}
