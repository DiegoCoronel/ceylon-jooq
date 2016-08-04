import java.sql {
	Connection,
	DriverManager
}

shared object postgres {
	
	String userName = "jooq";
	String password = "jooq";
	String url = "jdbc:postgresql://localhost:5432/jooq";
	
	shared Connection connection = DriverManager.getConnection(url, userName, password);
	
}