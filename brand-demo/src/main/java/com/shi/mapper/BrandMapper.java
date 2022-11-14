package com.shi.mapper;

import com.shi.pojo.Brand;

import java.util.List;

public interface BrandMapper {


    //查询所有
    List<Brand> selectALl();


    //新增
    void add(Brand brand);

    //修改
    void update(Brand brand);

    //根据id查询
    Brand selectById(int id);
}
