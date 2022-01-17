<%@page import="java.sql.DriverManager, java.sql.Connection, java.sql.PreparedStatement"%>

<%
    String id=(String)session.getAttribute("ID");
    String quali=request.getParameter("qualification");
    String experience=request.getParameter("exp");
    String address=request.getParameter("add");
    int pincode=Integer.parseInt(request.getParameter("pin"));
    String contact=request.getParameter("number");
    String description=request.getParameter("description");
    
    
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    
       PreparedStatement ps = con.prepareStatement("insert into teacherdetails values (?,?,?,?,?,?,?)"); 
       ps.setString(1,id);
       ps.setString(2,quali);
       ps.setString(3,experience);
       ps.setString(4,address);
       ps.setInt(5,pincode);
       ps.setString(6,contact);
       ps.setString(7,description);
       
       
       ps.executeUpdate();
      response.sendRedirect("TeacherPage.jsp");
    
    
%>