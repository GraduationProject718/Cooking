package jdbc;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class jdbcUtils {
	private static String driverName;
	private static String url;
	private static String user;
	private static String password;
	
	static {
		try{
			InputStream in = jdbcUtils.class.getClassLoader()
					.getResourceAsStream("dbinfo.properties");
			Properties properties = new Properties();
			properties.load(in);
			
			driverName = properties.getProperty("driverName");
			url = properties.getProperty("url");
			user = properties.getProperty("user");
			password = properties.getProperty("password");
			
			Class.forName(driverName);
		}catch(IOException e){
			e.printStackTrace();
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
	}
	
	
	public static Connection getConnection() throws SQLException{
		return DriverManager.getConnection(url,user,password);
	}
		
	public static void releaseResources(ResultSet resultSet,
			Statement statement,Connection connection){
		try {
			if(resultSet != null)
				resultSet.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			resultSet = null;
			try {
				if(statement != null)
				statement.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				statement = null;
				try {
					if(connection != null)
						connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}finally{
					connection = null;
				}
			}
		}
	}
}
