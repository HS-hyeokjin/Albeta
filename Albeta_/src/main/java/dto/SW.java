package dto;

import java.io.Serializable;

public class SW implements Serializable {
	
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String SWID;       			//sw ���̵�
	private String fileName;    		//���� �̸�
	private String classification; 		//�з�
	private int volume;					//���� ũ��
	private String description;         //����
	private String developer;			//������
	
	
	
	
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

	public int getVolume() {
		return volume;
	}

	public void setVolume(int volume) {
		this.volume = volume;
	}
	
	
	
}
