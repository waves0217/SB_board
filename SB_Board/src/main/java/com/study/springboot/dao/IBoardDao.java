package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.BoardDto;

@Mapper
public interface IBoardDao {
	public List<BoardDto> list();
}
