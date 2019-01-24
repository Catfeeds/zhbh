package com.jtzh.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.jtzh.common.Constants;
import com.jtzh.common.ResultObject;
import com.jtzh.detail.pojo.HiddenCoordinate;
import com.jtzh.detail.pojo.HiddenResponse;
import com.jtzh.entity.HiddenDanger;
import com.jtzh.entity.LoginUserTest;
import com.jtzh.entity.SecuritySource;
import com.jtzh.mapper.HiddenMapper;
import com.jtzh.mapper.SecuritySourceMapper;
import com.jtzh.pojo.CountDay;
import com.jtzh.pojo.CountHiddenAndInspection;
import com.jtzh.pojo.CountMonth;
import com.jtzh.pojo.CountQuarter;
import com.jtzh.pojo.CountState;
import com.jtzh.pojo.CountWisdomTalent;
import com.jtzh.pojo.HiddenDetail;
import com.jtzh.pojo.HiddenParam;
import com.jtzh.pojo.PageResult;

@Service("hiddenService")
public class HiddenServiceImpl implements HiddenService{
	@Resource
	private HiddenMapper hiddenMapper;

	@Resource
	private SecuritySourceMapper securitySourceMapper;
	
	@Override
	public Object getHiddenList(HiddenParam param) {
		List<HiddenDanger> list = new ArrayList<HiddenDanger>();
		PageResult response = new PageResult();
		int total = hiddenMapper.selectHidTotal(param);
		if (total > 0) {
			list = hiddenMapper.selectInfo(param);
		}
		response.setOk(true);
		response.setTotal(total);
		response.setRows(list);
		return response;
	}
	
	@Override
	public HiddenDetail getHiddenInfo(String id) {
		// 根据id去查询信息和图片资源信息
		HiddenResponse response = new HiddenResponse();
		HiddenDanger hidden = hiddenMapper.getHiddenInfo(id);
		response.setHiddenDanger(hidden);
		// 02
		response.setSource(securitySourceMapper.getSourceInfo(Constants.ATTACHSOURCE_BEFORE, id));
		// 03
		response.setAfterSource(securitySourceMapper.getSourceInfo(Constants.ATTACHSOURCE_AFTER, id));
		return response;
	}
	
	@Override
	public Object addHidden(HiddenDetail hiddenDetail, LoginUserTest user) {
		// 图片资源存到source表，关联字段为attachmentSource
		HiddenDanger hidden = hiddenDetail.getHiddenDanger();
		// 02
		hidden.setPeople(hiddenDetail.getHiddenDanger().getPeople());
		hidden.setState(Constants.DESCRIPTION_BEFORE);
		hidden.setAttachmentSource("02");
		hidden.setYhzh(Constants.YHZH_BAOHUA);
		hidden.setCreateTime(new Date());
		hidden.setIsdeleted("0");
		hidden.setCreateId(user.getLoginId());
		hiddenMapper.insertHidden(hidden);
		List<SecuritySource> hidList = hiddenDetail.getSource();
		// 如果图片存在
		if (hidList != null && hidList.size() > 0) {
			for (SecuritySource source : hidList) {
				source.setAttachmentSource("02");
				source.setType("01");
				source.setCreateTime(new Date());
				source.setIsdeleted("0");
				source.setSourceId(hidden.getId());
				securitySourceMapper.insertSelective(source);
			}
		}
		return new ResultObject();
	}
	
	@Override
	public Object deleteHidden(String id, String sourceType) {
		// 删除问题---a).删除表记录; b)删除对应的资源表记录.
		hiddenMapper.deleteHidden(id);
		List<SecuritySource> hidList = securitySourceMapper.getSourceInfo(sourceType, id);
		if (hidList != null && hidList.size() > 0) {
			for (SecuritySource source : hidList) {
				Integer a = source.getId();
				securitySourceMapper.deleteSource(a);
			}
		}
		return new ResultObject();
	}

	// 修改
	@Override
	public Object updateHidden(HiddenDanger param) {
		hiddenMapper.updateHidden(param);
		return new ResultObject();
	}

	// 移交
	@Override
	public Object moveHidden(HiddenDanger param) {
		param.setState("02");
		hiddenMapper.moveHidden(param);
		return new ResultObject();
	}

	// 指派
	@Override
	public Object sendHidden(HiddenDanger param) {
		param.setState("03");
		hiddenMapper.sendHidden(param);
		return new ResultObject();
	}
	
	// 整改
	@Override
	public Object solveHidden(HiddenDetail hiddenDetail) {
		HiddenDanger hidden = hiddenDetail.getHiddenDanger();
		hidden.setState(Constants.DESCRIPTION_AFTER);
		hiddenMapper.solveHidden(hidden);
		List<SecuritySource> hidList = hiddenDetail.getSource();
		// 如果图片存在
		if (hidList != null && hidList.size() > 0) {
			for (SecuritySource source : hidList) {
				source.setAttachmentSource(Constants.ATTACHSOURCE_AFTER);
				source.setType("02");
				source.setCreateTime(new Date());
				source.setIsdeleted("0");
				source.setSourceId(hidden.getId());
				securitySourceMapper.insertSelective(source);
			}
		}
		return new ResultObject();
	}

	@Override
	public Object getHiddenCoordinate() {
		List<HiddenCoordinate> hiddenCoordinate = hiddenMapper.getHiddenCoordinate();
		ResultObject res = new ResultObject();
		res.setObj(hiddenCoordinate);
		return res;
	}

	@Override
	public Object countHiddenState() {
		List<CountHiddenAndInspection> list = hiddenMapper.countHiddenState();
		ResultObject res = new ResultObject();
		res.setObj(list);
		return res;
	}

	@Override
	public Object getHiddenGis(HiddenParam param) {
		List<HiddenDanger> list = hiddenMapper.selectInfoWeb(param);
		PageResult response = new PageResult();
		if (list != null && list.size() > 0) {
			response.setOk(true);
			response.setTotal(list.size());
			response.setRows(list);
		} else {
			response.setOk(false);
			response.setTotal(0);
		}
		return response;
	}

	@Override
	public Object countHiddenByYear(String year) {
		ResultObject res = new ResultObject();
		List<CountQuarter>  countQuarters= hiddenMapper.countHiddenByYear(year);
		Map<String,Integer> targetQuarter = new HashMap<>();
		Map <Integer,String> quarterMap = new HashMap<>();
		Integer startQuarter = Constants.DEFAULT_QUARTER;
		for(int i = 0;i < 4;i++){
			int count = 0;
			quarterMap.put(i, (startQuarter).toString());
			for(CountQuarter param: countQuarters){
				if(param.getQuarter().equals(quarterMap.get(i)))
				count += Integer.valueOf(param.getCount());
			}
			targetQuarter.put(startQuarter.toString(), count);
			startQuarter ++;
		}
		res.setObj(targetQuarter);
		return res;
	}

	@Override
	public Object countHiddenByState(String state) {
		return hiddenMapper.countHiddenByState(state);
	}

	@Override
	public Object countHiddenStateNoParam() {
		List<CountState> list = hiddenMapper.countHiddenStateNoParam();
		ResultObject res = new ResultObject();
		res.setObj(list);
		return res;
	}

	@Override
	public Object countHiddenByMonth(String year) {
		List<CountMonth>  countMonthes= hiddenMapper.countHiddenByMonth(year);
		ResultObject res = new ResultObject();
		res.setObj(countMonthes);
		return res;
	}

	@Override
	public Object countHiddenByDay(String year) {
		List<CountDay>  countDays= hiddenMapper.countHiddenByDay(year);
		ResultObject res = new ResultObject();
		res.setObj(countDays);
		return res;
	}

	@Override
	public Object countHiddenAllCountryside() {
		ResultObject res = new ResultObject();
		res.setObj(hiddenMapper.countHiddenAllCountryside());
		return res;
	}
	
}
