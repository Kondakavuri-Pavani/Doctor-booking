import java.sql.*;

public class App {
	public static void main(String arg[])
	{
		Connection connection = null;
		try {
			// below two lines are used for connectivity.
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/temp",
				"root", "");

			// mydb is database
			// mydbuser is name of database
			// mydbuser is password of database

			Statement statement;
			statement = connection.createStatement();

			statement.executeUpdate("insert into options values(\" MyOptions\")");
			ResultSet resultSet;
			resultSet = statement.executeQuery(
				"select * from options");
			String code;
			while (resultSet.next()) {
				code = resultSet.getString("name");
				// title = resultSet.getString("title").trim();
				System.out.println("Options : " + code);
			}
			resultSet.close();
			statement.close();
			connection.close();
		}
		catch (Exception exception) {
			System.out.println(exception);
		}
	} // function ends
} // class ends
