package DataAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public interface DAO_SQLite<T> {
    default Connection getConnection() throws SQLException {

        Connection connection = null;
        try {
            connection = DriverManager.getConnection("jdbc:sqlite:C:/Users/mraut/Java_3/CSC-160-final-project-Pokedex/Database/Pokemon");
            System.out.println("conn");
        }
        catch (Exception e){

        }


        return connection;
    }
}
