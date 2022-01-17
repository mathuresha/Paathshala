<%@page import="java.sql.DriverManager, java.sql.Connection, java.sql.PreparedStatement"%>
<%
    String date=request.getParameter("Date");
    String name=request.getParameter("TName");
    String course=request.getParameter("course");
    String ques1=request.getParameter("radio1");
    String ques2=request.getParameter("radio2");
    String ques3=request.getParameter("radio3");
    String rating=request.getParameter("Rating");
    String suggest=request.getParameter("remark");
    String contact=request.getParameter("contactNo");
    
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    
       PreparedStatement ps = con.prepareStatement("insert into teacherfeedback values (?,?,?,?,?,?,?,?,?)"); 
       ps.setString(1,date);
       ps.setString(2,name);
       ps.setString(3,course);
       ps.setString(4,ques1);
       ps.setString(5,ques2);
       ps.setString(6,ques3);
       ps.setString(7,rating);
       ps.setString(8,suggest);
       ps.setString(9,contact);
       
       ps.executeUpdate();
      response.sendRedirect("StudentPage.jsp");
    
    
%>