package com.kh.mybatis.common.template;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class Template {
		public static SqlSession getSqlSession() {
			
			SqlSession sqlSession = null;
			
			String resource = "/mybatis-config.xml";
			
			try {
				InputStream stream = Resources.getResourceAsStream(resource);
				sqlSession = new SqlSessionFactoryBuilder().build(stream).openSession(false);
				//openSession(boolean flag) => flag : 자동커밋 여부(true면 자동커밋 false면 수동커밋)
				
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return sqlSession;
		}

}
