package util;
import java.sql.*;


public class MySQLCon {

    public static Connection getConnection() {
        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/spartanexchange?useSSL=false&serverTimezone=UTC",
                "root",
                "11321132"
            );

            System.out.println("Connected!");

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }
}