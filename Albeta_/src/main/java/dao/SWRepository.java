package dao;

import java.util.ArrayList;
import dto.SW;

public class SWRepository {

	private ArrayList<SW> listofSW = new ArrayList<SW>();
	// 객체뱐수 instance
	private static SWRepository instance = new SWRepository();
	
	public static SWRepository getInstance() {
		return instance;
	}
	
	
	public SWRepository( ) {
		SW mine = new SW("1","지뢰찾기");
		mine.setUnitVolume("10");
		mine.setClassification("게임");
		mine.setDeveloper("로버트 도너");
		mine.setDescription("지뢰를 찾아 없애는 게임");
		mine.setFilename2("1.png");
		
		
		SW kakao = new SW("2","카카오톡");
		kakao.setUnitVolume("20");
		kakao.setClassification("유틸");
		kakao.setDeveloper("카카오");
		kakao.setDescription("실시간으로 채팅하세요");
		kakao.setFilename2("2.png");


		listofSW.add(mine);
		listofSW.add(kakao);
		
		
	}
	//객체 타입의 변수 list에 저장된 모든 상품 목록을 가져오는 메소드
	public ArrayList<SW> getAllSW()	{
		return listofSW;
	}
	//list에 새로운 SW정보 등록하는 addSW 메소드
	public void addSW(SW sw) {
		listofSW.add(sw);
	}

	//객체 변수list 에 저장된 모든 sw 목록에서 id와 일치하는 sw을 가져오는 메소드
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
