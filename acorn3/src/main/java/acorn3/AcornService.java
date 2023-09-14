package acorn3;

import java.util.ArrayList;

public class AcornService {

	AcornDAO dao = new AcornDAO();
	public ArrayList<Customer> realList(){
		ArrayList<Customer> list = dao.selectAll();
		return list;
	}
}
