<%@page import="java.sql.DriverManager, java.sql.Connection, java.sql.PreparedStatement,java.sql.ResultSet"%>
<%
    String button1=request.getParameter("Signup");
    int REGISTER=0;
    if(button1!=null && button1.equals("Create Account"))
    {
        String name=request.getParameter("FullName");
        String userId=request.getParameter("UserId");
        String mail=request.getParameter("Email");
        String password=request.getParameter("pass");
        String contactNo=request.getParameter("Contact");
        String post=request.getParameter("who");    
    
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
        
            if(post.equals("I'm a Teacher"))
            {
                PreparedStatement st=con.prepareStatement("select * from teacherinfo where UserId=?");
                st.setString(1,userId);        
                ResultSet rs=st.executeQuery();
                if(rs.next())
                {
                    REGISTER=1;
                }
                else
                {
                PreparedStatement ps = con.prepareStatement("insert into teacherinfo values (?,?,?,?,?)"); 
                ps.setString(1, userId);
                ps.setString(2, name);
                ps.setString(3, mail);
                ps.setString(4, password);
                ps.setString(5, contactNo); 
       
                session.setAttribute("ID", userId);
       
                ps.executeUpdate();
                response.sendRedirect("SubjectSelection.jsp");
                }
            }
            else if(post.equals("I'm a Student"))
            {
                PreparedStatement st=con.prepareStatement("select * from studentinfo where UserId=?");
                st.setString(1,userId);        
                ResultSet rs=st.executeQuery();
                if(rs.next())
                {
                    REGISTER=1;
                }
                else
                {
                PreparedStatement ps = con.prepareStatement("insert into studentinfo values (?,?,?,?,?)"); 
                ps.setString(1, userId);
                ps.setString(2, name);
                ps.setString(3, mail);
                ps.setString(4, password);
                ps.setString(5, contactNo);
                
                ps.executeUpdate();
       
                response.sendRedirect("LoginRegister.jsp");
                }
            }
            
        con.close();
    }
    
    String button=request.getParameter("Submit");
    int LOGIN=0;
    if(button!=null && button.equals("Login"))
    {
    String userId=request.getParameter("UserId");
    String password=request.getParameter("pass");
    String post=request.getParameter("who");

    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    
    if(post.equals("I'm a Teacher"))
    {
       PreparedStatement ps = con.prepareStatement("select * from teacherinfo where UserId=? and Password=?"); 
       ps.setString(1, userId);
       ps.setString(2, password);
       
       ResultSet rs=ps.executeQuery();
       if(rs.next())
       {
           session.setAttribute("ID", userId);
           response.sendRedirect("TeacherProfile.jsp");
       }
       else
       {
           LOGIN=1;
       }
      
    }
    else
    {
      PreparedStatement ps1 = con.prepareStatement("select * from studentinfo where UserId=? and Password=?"); 
       ps1.setString(1, userId);
       ps1.setString(2, password);
       
       ResultSet rs=ps1.executeQuery();
       if(rs.next())
       {
           session.setAttribute("ID", userId);
           response.sendRedirect("StudentPage.jsp");
       }
       else
       {
           LOGIN=1;
       }
    }
    }
%>
<html>
    <style>
        
body {
  font: 20px 'Arial';
  background: #2d4259;
}

.heading {
  width: 270px;
  line-height: 43px;
  margin: 60px auto;
  margin-bottom: 20px;
  font-size: 21px;
  font-weight: 500;
  color: white;
  text-align: center;
  text-shadow: 2px 1px 2px black;
  background: slategrey;
  border-radius: 3px;
}

.register {
  margin: 0 auto;
  width: 250px;
  padding: 20px;
  background: #f4f4f4;
  border-radius: 3px;
}

input {
  font-family: arial;
  font-size: 16px;
}

.fields{
  width: 100%;
  height: 38px;
  margin-top: 2px;
  font-weight: 500;
  background: none;
  border: 0;
  border-bottom: 1px solid;
}

.button
{
  width: 100%;
  height: 42px;
  margin-top: 25px;
  font-size: 16px;
  font-weight: bold;
  text-align: center;
  background: none;
  border: 1px solid;
  border-color: lightgrey;
  border-radius: 2px;
}
.custom-select select {
  display: none; /*hide original SELECT element: */
}
.option
{
    font-weight: 500; 
    font-family: arial; 
    font-size: 16px;
}

    </style>    
    <body bgcolor="blue">
    <h1  class="heading">Welcome to <font style='color:lightblue; font-weight:bold;'>Paathshala</font>!</h1>
    
    <form class="register" action="">
        <input type="text" class="fields" placeholder="Full Name" name="FullName">
        <input type="text" class="fields" placeholder="Username" name="UserId">
        <input type="email" class="fields" placeholder="Email address" name="Email" >
        <input type="password" class="fields" placeholder="Password" name="pass">
        <input type="text" class="fields" placeholder="Contact Number" name="Contact">
        <select class="fields" name="who">
            <option>I'm a Teacher</option>
            <option>I'm a Student</option>
        </select>
        <input type="submit" value="Create Account" class="button" name="Signup">
        <%
        if(REGISTER==1)
        {%>
        <h2 style="color:red; font-size:  12px;" >Username already exists.</h2>
        <%}
    %>
  </form>
    
  <br>
  
  <hr style="width:20%;border: 1px solid grey;">
  <br>
  <form class="register" action="" method="POST">
      <input type="text" class="fields" placeholder="Username" name="UserId" >
    <input type="password" class="fields" placeholder="Password" name='pass'>
     <select class="fields" name="who">
        <option>I'm a Teacher</option>
        <option>I'm a Student</option>
    </select>
    <input type="submit" value="Login" class="button" name="Submit">
    <%
        if(LOGIN==1)
        {%>
        <h2 style="color:red; font-size:  12px;" >Invalid Username or Password.</h2>
        <%}
    %>
  </form>
</body>
</html>