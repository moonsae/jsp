package prj0831;

import java.util.ArrayList;

public class ServiceMVC7 {
	
	public ArrayList<Movie> getList(){
		ArrayList<Movie> list = new ArrayList<>();
		list.add(new Movie("아이언맨",126));
		list.add(new Movie("인크레더블 헐크",112));
		list.add(new Movie("아이언맨2",125));
		list.add(new Movie("토르: 천둥의 신",115));
		list.add(new Movie("퍼스트 어벤져",124));
		list.add(new Movie("인크레더블 헐크",112));
		
		return list;
	}

}
