/*     */ package com.jtzh.service.Impl;
/*     */ import com.jtzh.util.Page;
/*     */ import com.jtzh.util.PageUtil;
/*     */ import com.jtzh.vo.school.SchoolQueryVO;
/*     */ import com.jtzh.vo.school.SchoolVO;
/*     */ import com.jtzh.vo.school.SchoolVideoQuery;
/*     */ import com.jtzh.vo.school.SchoolVideoVO;
/*     */ import com.jtzh.vo.video.CheckVideoVO;
import com.jtzh.entity.School;
import com.jtzh.entity.SchoolVideo;
import com.jtzh.mapper.CODESchoolRunningTypeMapper;
import com.jtzh.mapper.SchoolMapper;
import com.jtzh.mapper.SchoolVideoMapper;
import com.jtzh.service.SchoolService;

/*     */ import java.util.HashMap;
/*     */ import java.util.List;
/*     */ import java.util.Map;
/*     */ import org.springframework.beans.factory.annotation.Autowired;
/*     */ import org.springframework.stereotype.Service;
/*     */ 
/*     */ 
/*     */ @Service
/*     */ public class SchoolServiceImpl
/*     */   implements SchoolService
/*     */ {
/*     */   @Autowired
/*     */   private CODESchoolRunningTypeMapper codeSchoolRunningTypeMapper;
/*     */   @Autowired
/*     */   private SchoolMapper schoolMapper;
/*     */   @Autowired
/*     */   private SchoolVideoMapper schoolVideoMapper;
/*     */   
/*     */   public Map getSchoolCode()
/*     */   {
/*  36 */     Map map = new HashMap();
/*  37 */     map.put("SchoolRunningType", this.codeSchoolRunningTypeMapper.selectAll());
/*  38 */     map.put("SchoolCode", this.schoolMapper.getAllSchoolCode());
/*  39 */     return map;
/*     */   }
/*     */   
/*     */   public boolean addSchool(School school)
/*     */   {
/*  44 */     return this.schoolMapper.insert(school) != 0;
/*     */   }
/*     */   
/*     */   public boolean deleteSchool(Long id)
/*     */   {
/*  49 */     return this.schoolMapper.deleteByPrimaryKey(id) != 0;
/*     */   }
/*     */   
/*     */   public boolean updateSchool(School school)
/*     */   {
/*  54 */     return this.schoolMapper.updateByPrimaryKey(school) != 0;
/*     */   }
/*     */   
/*     */   public SchoolVO getSchoolDetail(Long id)
/*     */   {
/*  59 */     return this.schoolMapper.getSchoolDetailByID(id);
/*     */   }
/*     */   
/*     */   public School getSchoolDetailToUpdate(Long id)
/*     */   {
/*  64 */     return this.schoolMapper.selectByPrimaryKey(id);
/*     */   }
/*     */   
/*     */   public SchoolQueryVO getSchoolQuery(String name, String type, Integer netGridID, int page, int pageSize)
/*     */   {
/*  69 */     int start = 0;
/*  70 */     if (page > 1)
/*  71 */       start = (page - 1) * pageSize;
/*  72 */     List<SchoolVO> vos = this.schoolMapper.getSchoolQuery(name, type, netGridID, start, pageSize);
/*  73 */     int count = this.schoolMapper.getSchoolQueryCount(name, type, netGridID);
/*  74 */     Page p = PageUtil.createPage(pageSize, count, page - 1);
/*  75 */     SchoolQueryVO vo = new SchoolQueryVO();
/*  76 */     vo.setVos(vos);
/*  77 */     vo.setPage(p);
/*  78 */     return vo;
/*     */   }
/*     */   
/*     */ 
/*     */   public SchoolVideoQuery getSchoolVideoQuery(String schoolName, Integer netGridID, int page, int pageSize)
/*     */   {
/*  84 */     int start = 0;
/*  85 */     if (page > 1)
/*  86 */       start = (page - 1) * pageSize;
/*  87 */     List<SchoolVideoVO> vos = this.schoolVideoMapper.getSchoolVideoQuery(schoolName, netGridID, start, pageSize);
/*  88 */     int count = this.schoolVideoMapper.getSchoolVideoQueryCount(schoolName, netGridID);
/*  89 */     Page p = PageUtil.createPage(pageSize, count, page - 1);
/*  90 */     SchoolVideoQuery vo = new SchoolVideoQuery();
/*  91 */     vo.setVos(vos);
/*  92 */     vo.setPage(p);
/*  93 */     return vo;
/*     */   }
/*     */   
/*     */   public boolean addSchoolVideo(SchoolVideo schoolVideo)
/*     */   {
/*  98 */     return this.schoolVideoMapper.insert(schoolVideo) != 0;
/*     */   }
/*     */   
/*     */   public boolean deleteSchoolVideo(Long id)
/*     */   {
/* 103 */     return this.schoolVideoMapper.deleteByPrimaryKey(id) != 0;
/*     */   }
/*     */   
/*     */   public boolean updateSchoolVideo(SchoolVideo schoolVideo)
/*     */   {
/* 108 */     return this.schoolVideoMapper.updateByPrimaryKey(schoolVideo) != 0;
/*     */   }
/*     */   
/*     */   public SchoolVideoVO getSchoolVideoDetail(Long id)
/*     */   {
/* 113 */     return this.schoolVideoMapper.getSchoolVideoDetailByID(id);
/*     */   }
/*     */   
/*     */   public SchoolVideo getSchoolVideoDetailToUpdate(Long id)
/*     */   {
/* 118 */     return this.schoolVideoMapper.selectByPrimaryKey(id);
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */   public List<CheckVideoVO> getVideoForTree(Long id)
/*     */   {
/* 125 */     return this.schoolVideoMapper.getVideoForTree(id);
/*     */   }
/*     */   
/*     */ 
/*     */   public List<CheckVideoVO> getSchoolForTree()
/*     */   {
/* 131 */     return this.schoolMapper.getSchoolForTree();
/*     */   }
/*     */ }


/* Location:              C:\Users\rainb\Desktop\msmis.war!\WEB-INF\classes\com\gbt\service\impl\SchoolServiceImpl.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */