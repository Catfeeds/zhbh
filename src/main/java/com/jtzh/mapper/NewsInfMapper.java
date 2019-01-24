package com.jtzh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jtzh.entity.NewsInf;
import com.jtzh.pojo.NewsDepReq;
import com.jtzh.pojo.NewsInf2Pagination;
import com.jtzh.pojo.NewsInfPagination;

public interface NewsInfMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(NewsInf record);

    int insertSelective(NewsInf record);

    NewsInf selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(NewsInf record);

    int updateByPrimaryKey(NewsInf record);
    
    // 查询总数
 	int selectTotal(@Param("page") NewsInfPagination param);

 	// 分页查询
 	List<NewsInf> selectInfo(@Param("page") NewsInfPagination param);

 	// 查询具体的路
  	NewsInf selectNews(Integer id);
 	
 	// 查询具体的路
 	NewsInf selectNewsOnlyDep(NewsDepReq param);

 	// 删除
 	int deleteNews(Integer id);
 	
 	// 更新阅读次数
  	int updateReadNum(Integer id);
  	
	// 查询具体的路
 	List<NewsInf> selectNewsList(int ids[]);
 	
 	// 分页查询
  	List<NewsInf> selectInfo2(@Param("page") NewsInf2Pagination param);
  	
  	// 查询总数
  	int selectTotal2(@Param("page") NewsInf2Pagination param);
  	
  	int insertNewsInf(NewsInf record);
  	
  	// 查询总数
   	int selectTotal3();
   	
   	// 更新阅读次数
   	int updateHasReceiveNum(Integer id);
}