package dto;

import java.io.Serializable;

public class SW implements Serializable {
	
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String SWID;       			//sw 아이디
	private String fileName;    		//파일 이름
	private String classification; 		//분류
	private String unitVolume;				//파일 크기
	private String description;         //설명
	private String developer;			//제작자
	private String filename2;            //파일명
	private int swnum;               //관심등록 개수
	
	public int getSwnum() {
		return swnum;
	}

	public void setSwnum(int swnum) {
		this.swnum = swnum;
	}

	public String getFilename2() {
		return filename2;
	}

	public void setFilename2(String filename2) {
		this.filename2 = filename2;
	}

	public	String getUnitVolume() {
		return unitVolume;
	}

	public void setUnitVolume(String unitVolume) {
		this.unitVolume = unitVolume;
	}
	
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDeveloper() {
		return developer;
	}

	public void setDeveloper(String developer) {
		this.developer = developer;
	}

	public SW() {
		super();
	}
	
	public SW(String SWID, String fileName) {
		this.SWID = SWID;
		this.fileName = fileName;
	}

	public String getSWID() {
		return SWID;
	}

	public void setSWID(String sWID) {
		SWID = sWID;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getClassification() {
		return classification;
	}

	public void setClassification(String classification) {
		this.classification = classification;
	}


	
	
}
