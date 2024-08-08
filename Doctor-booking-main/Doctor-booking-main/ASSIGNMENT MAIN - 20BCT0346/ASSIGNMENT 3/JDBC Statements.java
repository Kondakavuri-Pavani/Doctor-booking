import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

String jdbcUrl = "jdbc:mysql://localhost:3306/mydatabase";
String username = "hariharan";
String password = "hari1234";

try {
  Connection connection = DriverManager.getConnection(jdbcUrl, username, password);
  // Use the connection object for further operations
} catch (SQLException e) {
  e.printStackTrace();
}

#QUERY EXECUTION
try {
  Statement statement = connection.createStatement();
  String sqlQuery = "SELECT * FROM customers";
  ResultSet resultSet = statement.executeQuery(sqlQuery);

  while (resultSet.next()) {
    // Retrieve data from the result set
    String name = resultSet.getString("name");
    String email = resultSet.getString("email");

    // Process the retrieved data
    System.out.println("Name: " + name + ", Email: " + email);
  }

  // Close the result set and statement
  resultSet.close();
  statement.close();
} catch (SQLException e) {
  e.printStackTrace();
}

#UPDATE
try {
  Statement statement = connection.createStatement();
  String sqlUpdate = "UPDATE customers SET email='updated_email@example.com' WHERE id=1";
  int rowsAffected = statement.executeUpdate(sqlUpdate);
  System.out.println("Rows affected: " + rowsAffected);

  statement.close();
} catch (SQLException e) {
  e.printStackTrace();
}

#Close Connection
try {
  if (connection != null) {
    connection.close();
  }
} catch (SQLException e) {
  e.printStackTrace();
}

