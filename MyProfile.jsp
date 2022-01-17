<%@page import="java.sql.DriverManager, java.sql.Connection, java.sql.PreparedStatement,java.sql.ResultSet, java.util.ArrayList"%>
<%@include file ="SecurityPage.jsp"%>
<%
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st0=con.prepareStatement("select * from teacherinfo where UserId=?");
    st0.setString(1,value);  
    ResultSet rs0=st0.executeQuery();
    if(rs0.next())
    {
        response.sendRedirect("TeacherProfile.jsp");
    }
    else
    {
        PreparedStatement st2=con.prepareStatement("select * from studentinfo where UserId=?");
        st2.setString(1,value);  
        ResultSet rs2=st2.executeQuery();
        if(rs2.next())
        {
            response.sendRedirect("StudentProfile.jsp");
        }
    }
    
     
%>
