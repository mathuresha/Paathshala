<%@page import="java.sql.DriverManager, java.sql.Connection, java.sql.PreparedStatement"%>
<%
    String date=request.getParameter("Date");
    String ques1=request.getParameter("radio1");
    String ques2=request.getParameter("radio2");
    String ques3=request.getParameter("radio3");
    String ques4=request.getParameter("radio4");
    String rating=request.getParameter("Rating");
    String suggest=request.getParameter("suggest");
    String contact=request.getParameter("contactNo");
    
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    
       PreparedStatement ps = con.prepareStatement("insert into websitefeedback values (?,?,?,?,?,?,?,?)"); 
       ps.setString(1,date);
       ps.setString(2,ques1);
       ps.setString(3,ques2);
       ps.setString(4,ques3);
       ps.setString(5,ques4);
       ps.setString(6,rating);
       ps.setString(7,suggest);
       ps.setString(8,contact);
       
       ps.executeUpdate();
      response.sendRedirect("frontPage.jsp");
    
    
%>