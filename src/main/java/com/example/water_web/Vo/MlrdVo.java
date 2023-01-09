package com.example.water_web.Vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

@Data
@Getter
@Setter
public class MlrdVo {

    private int mlrd_sn;
    private int cntr_sn;
    private String mlrd_ttl2;
    private String mlrd_cn;
    private String mlrd_file_id;

    private String use_yn;

    private int rgtr_id;
    private Date rgtr_dt;
    private String mbfr_id;
    private LocalDateTime mbfr_dt;

    private int ctbny_pc;     // 현재 기부액 조회
    private int percent;
    private LocalDate cntr_str_dt;
    private String cntr_end_dt;
    private int cntr_obctr;
}
