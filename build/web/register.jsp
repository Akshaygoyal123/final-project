<%-- 
    Document   : register
    Created on : 15 Nov, 2018, 10:02:00 AM
    Author     : Goyal-PC
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>register</title>
    </head>
    <body>
        
<%
    

           String uname=request.getParameter("unameee");
           String pwd=request.getParameter("passs");
           String email=request.getParameter("email");
           String tel=request.getParameter("phone");
           Connection conn=null;
           Statement st=null;
           ResultSet rs=null;
           try
             {
                String myUrl="jdbc:mysql://localhost/acadview";
		Class.forName("com.mysql.jdbc.Driver");      		
		conn=DriverManager.getConnection(myUrl,"root","");
                st=conn.createStatement();
                st.executeUpdate("insert into test values('"+uname+"','"+pwd+"','"+email+"','"+tel+"')");              
                response.sendRedirect("hello.html");
             }
            catch(Exception e)
            {                
                out.println(e);   
            }
           

        %>
    </body>
</html>