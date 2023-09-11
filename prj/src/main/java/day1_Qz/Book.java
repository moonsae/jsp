package day1_Qz;

public class Book {
	String title;
	String author;
	int price;
	
	public Book() {
		// TODO Auto-generated constructor stub
	}
	public Book(String title, String author,int price) {
		this.title= title;
		this.author = author;
		this.price = price;
	}
	@Override
	public String toString() {
		return "title : "+ title+" ,author : "+ author+ ",price : "+price; 
	}

}
