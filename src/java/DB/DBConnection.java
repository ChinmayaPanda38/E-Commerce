
package DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    public static final String url = "jdbc:mysql://localhost:3308/ecommerce_db";
    public static final String username = "root";
    public static final String password = "root";
    
    public static Connection getConnection(){
        Connection con = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Driver loaded Sucessfully");
            con = DriverManager.getConnection(url,username,password);
            if(con!=null){
                System.out.println("Connnection Sucessful");
            }
        }
        catch(Exception e){
            System.out.println("Connection Failed"+e);
            e.printStackTrace();
        }
        return con;
    }
}
