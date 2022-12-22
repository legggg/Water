package com.example.water_web.Service;

import com.example.water_web.Vo.LoginResponse;
import com.example.water_web.Vo.UserVo;

public interface UserService {
    void signUp(UserVo userVo);
    LoginResponse login(UserVo userVo);
    Integer getMbrSn(String mbr_id, String mbr_password);
    int idCheck(String mbr_id);
}
