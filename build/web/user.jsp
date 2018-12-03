<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login database Page</title>
    </head>
    <body>
        <%
           String unamee=request.getParameter("unameee");
           String pass=request.getParameter("pwd");
           try{
		String myUrl="jdbc:mysql://localhost/acadview";
		//step 1:   
		Class.forName("com.mysql.jdbc.Driver");
      		//step 2:
		Connection conn=DriverManager.getConnection(myUrl,"root","");
		String query="Select email,pwd from test where email= '"+unamee+"' and pwd='"+pass+"'";
		//step 3:
		Statement st=conn.createStatement();
		//step 4:
		ResultSet rs =st.executeQuery(query);
		if(rs.next()){
			response.sendRedirect("hello.html");
		}  
                else
                out.println("Invalid username or password");
		//step 5
		st.close();
		}
		catch(Exception e){
			System.err.println("Got an exception! ");
			System.err.println(e.getMessage());
		}
           
        %>
    </body>
</html>