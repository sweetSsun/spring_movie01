package com.spring_movie01.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.web.servlet.ModelAndView;

import com.spring_movie01.dto.MemberDto;
import com.spring_movie01.dto.MovieDto;
import com.spring_movie01.dto.SchedulesDto;
import com.spring_movie01.dto.TheaterDto;

public interface AdminDao {

	@Select("SELECT COUNT(*) FROM MOVIES WHERE MVNAME=#{mvname} AND TO_CHAR(MVOPEN,'YYYY.MM.DD')=#{mvopen}")
	int selectMvCheck(@Param("mvname") String mvname, @Param("mvopen") String mvopen);
	
	@Select("SELECT NVL(MAX(MVCODE),'MV001') FROM MOVIES")
	String getMaxMvcode();
	
	void insertMovieInfo(MovieDto mdto);

	@Update("UPDATE MOVIES SET MVSTATE=${mvstate} WHERE MVCODE=#{mvcode}")
	void changeMvstate(@Param("mvcode")String mvcode, @Param("mvstate") int mvstate);
	
	@Select("SELECT MVSTATE FROM MOVIES WHERE MVCODE=#{mvcode}")
	int getMvstate(String mvcode);

	int updateMovieInfo(MovieDto mvInfo);

	@Select("SELECT * FROM THEATERS ORDER BY THCODE")
	ArrayList<TheaterDto> getTheaterList();

	@Update("UPDATE THEATERS SET THSTATE=#{thstate} WHERE THCODE=#{thcode}")
	int changeThstate(@Param("thcode") String thcode, @Param("thstate") int thstate);

	int updateTheaterInfo(TheaterDto thInfo);

	@Select("SELECT * FROM MOVIES WHERE MVSTATE=0")
	ArrayList<MovieDto> getMvList();

	int confirmScdate(SchedulesDto schedule);

	int insertSchedule(SchedulesDto schedule);

	ArrayList<SchedulesDto> getScroomTime(@Param("scthcode") String scthcode, @Param("scday") String scday);

	ArrayList<MemberDto> getMemberList();

	int updateMember(MemberDto upMember);


	
}
