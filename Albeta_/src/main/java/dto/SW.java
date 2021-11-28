package dto;

import java.io.Serializable;

public class SW implements Serializable {
	
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String SWID;       			//sw ���̵�
	private String fileName;    		//���� �̸�
	private String classification; 		//�з�
	private int volume;					//���� ũ��
	
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

	public int getVolume() {
		return volume;
	}

	public void setVolume(int volume) {
		this.volume = volume;
	}
	
	
	
}
