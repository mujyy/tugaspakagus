%@page
   import="java.sql.*"
   import="javax.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Connection Test</title>
    </head>
    <body>

        <!--<a href="index1.jsp">Local Host</a> | -->
        <h1 style='color:green'>Connection Test</h1>
        <%
            //===========Database Connection Starts===========//
            String driver = "com.mysql.jdbc.Driver";
            String user     = "root";
            String password = "rahasia";
            String dbname   = "user_db";
            String url      = "jdbc:mysql://13.215.200.102:8080/"+dbname;
        //    String url      = "jdbc:mysql://localhost:3306/"+dbname;
            //===========Database Connection Ends===========//            



            //===========Don't Touch===========//  
try
            {
                Class.forName(driver).newInstance();
                Connection con = DriverManager.getConnection(url,user,password);
                if(con!=null)
                {
                    out.print("<h3 style='color:green'>Database connected successfully.</h3>");
                    out.print("<hr>");
                    String sql ="SELECT * FROM admin_details s";
                    PreparedStatement pst = con.prepareStatement(sql);
                    ResultSet rs = pst.executeQuery();
                    out.print("<table border='1'>");
                    out.print("<thead><tr><th>Script Code</th><th>Script Name</th></tr></thead>");
                    out.print("<tbody>");
                    while(rs.next())
                    {
                        out.print("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getString(2)+"</td></tr>");
                    }
                    out.print("</tbody>");
                    out.print("</table>");
                }else{
                    out.print("<h3 style='color:yellow'>Unable to connect to database.</h3>");
                }
            }catch(Exception e){
               out.print("<h3 style='color:red'>Unable to connect to database.</h3>");
                out.print("<h3 style='color:red'>My ERROR : "+e+"</h3>");
                System.out.println("Unable to connect : "+e);
            }
        %>
    </body>
</html>