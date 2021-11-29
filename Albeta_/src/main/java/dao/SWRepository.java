package dao;

import java.util.ArrayList;
import dto.SW;

public class SWRepository {

	private ArrayList<SW> listofSW = new ArrayList<SW>();
	
	public SWRepository( ) {
		SW mine = new SW("1","����ã��");
		mine.setVolume(10);
		mine.setClassification("����");
		mine.setDeveloper("�ι�Ʈ ����");
		mine.setDescription("���ڸ� ã�� ���ִ� ����");
		
		SW kakao = new SW("2","īī����");
		kakao.setVolume(20);
		kakao.setClassification("��ƿ");
		kakao.setDeveloper("īī��");
		kakao.setDescription("�ǽð����� ä���ϼ���");

		listofSW.add(mine);
		listofSW.add(kakao);
		
		
	}
	//��ü Ÿ���� ���� list�� ����� ��� ��ǰ ����� �������� �޼ҵ�
	public ArrayList<SW> getAllSW()	{
		return listofSW;
	}

	//��ü ����list �� ����� ��� sw ��Ͽ��� id�� ��ġ�ϴ� sw�� �������� �޼ҵ�
	public SW getSWById(String SWID) {
		SW swById = null;
		
		for(int i = 0; i < listofSW.size(); i++) {
			SW sw = listofSW.get(i);
			if(sw != null && sw.getSWID() != null && sw.getSWID().equals(SWID)) {
				swById = sw;
				break;
				
			}
		}
		return swById;
	}
	
	
	
	
	
	
	
}
