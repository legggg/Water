package com.example.water_web.Vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import java.time.LocalDateTime;

@Data
@Getter
@Setter
public class UserVo {
    private int mbr_sn;
    private int mbr_se;
    private String mbr_nm;
    private String mbr_id;
    private String mbr_password;
    private String mbr_ncnm;
    private String mbr_gen;
    private String mbr_tel;
    private String mbr_brthdy;
    private String mbr_email;

    private int fail_cnt;
    private String lock_yn;

    private String use_yn;

    private int rgtr_id;
    private LocalDateTime rgtr_dt;
    private int mbfr_id;
    private LocalDateTime mbfr_dt;
}
