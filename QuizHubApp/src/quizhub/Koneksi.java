package quizhub;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Koneksi {
    public Connection con;
    public Statement stm;

    public void getConnection() {
        try {
            // Implement the logic to establish a database connection
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quizhub", "root", "");
            stm = con.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
