package com.example.water_web.Vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.Date;

@Data
@Getter
@Setter
public class DonaVo {
    private int cntr_sn;
    private int mbr_sn;
    private String cntr_ttl;
    private String cntr_cn;
    private String cntr_file_id;
    private String cntr_adres;
    private String cntr_loc_lat;
    private String cntr_loc_lng;
    private Date cntr_str_dt;
    private Date cntr_end_dt;
    private int cntr_obctr;
    private int cntr_category;

    private String use_yn;

    private String rgtr_id;
    private LocalDateTime rgtr_dt;
    private String mbfr_id;
    private LocalDateTime mbfr_dt;
}