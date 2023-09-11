package drink;

import java.util.ArrayList;

public class DrinkService {

	DrinkDAO dao = new DrinkDAO();
	
	public ArrayList<String> getDrinkList(){
		ArrayList<String> list=dao.selectAll();
		return list;
	}
	public Drink getDrink(String name) {
		Drink d = dao.selectone(name);
		return d;
	}
	

}
