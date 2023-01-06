package com.example.water_web.Vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Data
@Getter
@Setter
public class MakeDonaVo {
    private int btr_sn;
    private int cntr_sn;
    private String btn_nm;
    private int btr_pc;

    private String use_yn;

    private int rgtr_id;
    private LocalDateTime rgtr_dt;
    private String mbfr_id;
    private LocalDateTime mbfr_dt;
}
