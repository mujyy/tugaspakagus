<%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>

        <% try { String connectionURL="jdbc:mysql://13.215.200.102:3306/user_db" ; Connection connection=null;
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connection=DriverManager.getConnection(connectionURL, "root" , "rahasia" ); // check weather connection is
            established or not by isClosed() method if(!connection.isClosed()) %>
            <font size="+3" color="green"></b>
                <% out.println("Successfully connected to " + " MySQL server using TCP/IP..."); connection.close(); }
                    catch(Exception ex){ %>
            </font>
            <font size="+3" color="red"></b>
                <% out.println("Unable to connect to database."); } %>
            </font>