package dao;

import java.util.ArrayList;
import dto.SW;

public class SWReopsitory {

	private ArrayList<SW> listofSW = new ArrayList<SW>();
	
	public SWReopsitory( ) {
		SW mine = new SW("1","Mine");
		mine.setVolume(10);
		mine.setClassification("����");
		
		
		listofSW.add(mine);
		
		
	}
	//��ü Ÿ���� ���� list�� ����� ��� ��ǰ ����� �������� �޼ҵ�
	public ArrayList<SW> getAllSW()	{
		return listofSW;
	}

}
