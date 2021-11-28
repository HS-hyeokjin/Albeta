package dao;

import java.util.ArrayList;
import dto.SW;

public class SWReopsitory {

	private ArrayList<SW> listofSW = new ArrayList<SW>();
	
	public SWReopsitory( ) {
		SW mine = new SW("1","Mine");
		mine.setVolume(10);
		mine.setClassification("게임");
		
		
		listofSW.add(mine);
		
		
	}
	//객체 타입의 변수 list에 저장된 모든 상품 목록을 가져오는 메소드
	public ArrayList<SW> getAllSW()	{
		return listofSW;
	}

}
