<%@page import ="java.sql.*"%>
<%@ page import="java.io.*" %>

<% Connection connection+null;
   Statement statement=null;
   ResultSet rs=null;
   try {
        String connectionURL = "jdbc:mysql://13.215.200.102:3306/user_db";
        String username = "root";
        String password = "rahasia";
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(connectionURL, username, password);
        connection.close();

   } catch (Exception e) {
        System.err.println("GAGAL KONEKSI KE DATABASE"+e.getMessage());
        out.println("GAGAL"+e.getMessage())
   }

%>