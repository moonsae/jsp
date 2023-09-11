package prj0831;

import java.util.ArrayList;

public class ServiceMVC6 {
	
	public ArrayList<BucketList> getBlist() {
		ArrayList<BucketList> list = new ArrayList<>();
		list.add(new BucketList("디즈니랜드 가기",35));
		list.add(new BucketList("기타배우기",35));
		list.add(new BucketList("취업하기",29));
		list.add(new BucketList("모션데스크 사기",30));
		list.add(new BucketList("아주 좋은 의자 사기",30));
		return list;
	}

}
