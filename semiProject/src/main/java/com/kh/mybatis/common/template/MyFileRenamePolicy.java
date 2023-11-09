package com.kh.mybatis.common.template;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyFileRenamePolicy implements FileRenamePolicy{

	// 원본파일을 전달받아서 파일명 수정작업후 수정된 파일을 반환시켜주는 메소드
	@Override
	public File rename(File originFile) {
		//원본파일명("aaa.jpg")
		String originName = originFile.getName();
		
		//수정파일명("2023102002153012345.jpg")
		//파일업로드시간(년월일시분초) + 5자리 랜덤값 + 원본파일확장자
		
		// 1. 파일업로드 시간(년월일시분초 형태)
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		// 2. 5자리 랜덤값
		int ranNum= (int)(Math.random()*90000 + 10000);
		
		// 3. 원본파일확장자
		String ext = originName.substring(originName.lastIndexOf("."));
		
		// 4. 통합
		String changeName = currentTime+ranNum+ext;
		
		File changeFile = new File(originFile.getParent(), changeName);
		
		return changeFile;
	}

}
