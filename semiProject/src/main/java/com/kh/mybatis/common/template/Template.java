package com.kh.mybatis.common.template;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Template {
	
	public static SqlSession getSqlSession() {
		//mybatis-config.xml => 파일 읽어드리기
		//해당 db와 접속된 sqlSession객체 생성해서 반환하기
		
		SqlSession sqlSession= null;
		
		//SqlSession생성하기 위해서는 => SqlSessionFactory필요
		//SqlSessionFactory 생성하기 위해서는 => SqlSessionFactoryBuilder필요
		
		String resource = "/mybatis-mapper.xml";
		try {
			
			InputStream stream = Resources.getResourceAsStream(resource);
			sqlSession= new SqlSessionFactoryBuilder().build(stream).openSession(false);
			//openSession(boolean flag) => flag: 자동커밋 여부(true면 자동카밋, flase는 수동 커밋)
 		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return sqlSession;
	};

}
