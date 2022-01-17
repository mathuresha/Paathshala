<%@page import="java.sql.DriverManager, java.sql.Connection, java.sql.PreparedStatement,java.sql.ResultSet, java.util.ArrayList"%>
<%@include file ="SecurityPage.jsp"%>
<%
    String name="";
    String userId="";
    String email="";
    String contact="";
    String qualification="";
    String experience="";
    String add="";
    String des="";
    int pincode=0;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    
    PreparedStatement st2=con.prepareStatement("select * from studentinfo where UserId=?");
    st2.setString(1,value);  
    ResultSet rs2=st2.executeQuery();
    if(rs2.next())
    {
        PreparedStatement st=con.prepareStatement("select * from studentinfo where UserId=?");
        st.setString(1,value);     
        ResultSet rs=st.executeQuery();
        if(rs.next())
        {
            name=rs.getString(2);
            userId=rs.getString(1);
            email=rs.getString(3);
            contact=rs.getString(5);           
        }
    }
      
%>

<html>
    <style>
    .sidebar {
        background-color: #f4f4f4;
        margin-top:20px;
        width: 15%;
        height: 550px;
        
    }
    .topbar 
    {
        background-color: #2d4259;
        margin:10px auto;
        width:100%;
        height:60px;
        border-radius: 2px;
    }
    .contents {
        background-color:slategray;
        width:83%;
        height:750px;
        margin-left: 250px;
        margin-top:-565px;
     
    }
    .bottominfo{
        background-color: #2d4259;
        height: 250px;
        margin-top:20px;
        width: 100%;
    } 
    .tdtheme
    {
        margin: 0px auto;
        padding: 8px;
        font-family: arial;
        font-size: 17px;
        border-radius: 2px;
        margin-top: 20px;
        font-weight: 200;
        color:#2d4259;
        
    }
    .links
    {
        color: #2d4259;
        text-decoration: none;
        
    }
    a:hover
    {
        background-color: transparent;
        
    }
    .heading {

  margin-left: 9px; 
  font-size: 30px;
  font-weight: 500;
  color: white;
  text-shadow: 2px 1px 2px black;
  
}
.register 
{
  margin: 0 auto;
  margin-top: 10px;
  width: 1100px;
  height: 600px;
  padding: 25px;
  background: #f4f4f4;
  border-radius: 3px;
}
    </style>
    <body>
    <div class="topbar">
        <div >
            <h1  class="heading" style="padding-top: 13px;">Welcome to <font style='color:lightblue; font-weight:bold;'>Paathshala</font> !
            </h1>
        </div>
        <div class="topbar" style="margin-left:1350px; width: 50px;  align-content: center; margin-top: -58px;height: 20px;">
            <a href="FeedbackTeacher.jsp" class="links" style="color:#f4f4f4; font-size: 16px; font-family: Verdana;">Teacher Review</a>
        </div>
        <div class="topbar" style="margin-left:1230px; width: 50px;  align-content: center; margin-top: -20px; height: 20px;">
            <a href="FeedbackWebsite.jsp" class="links" style="color:#f4f4f4; font-size: 16px; padding-top: 30px; font-family: Verdana;">Feedback</a>
        </div>
        <div class="topbar" style="margin-left:1150px; width: 50px;  align-content: center; margin-top: -30px; height: 20px;">
            <a href="Home.jsp" class="links" style="color:#f4f4f4; font-size: 16px; padding-top: 30px; font-family: Verdana;">Home</a>
        </div>
    </div>
        
    <div class="sidebar"> 
        <br>
        <table style="margin-top:10px; width: 95%">
            <tr>
          <td style="font-family: Verdana; color:#2d4259; font-size: 21px; padding-left:9px;">SUBJECTS</td>
            </tr>
            <tr>
                <td class="tdtheme" style="padding-top:15px;"><a href="Physics.jsp" class="links">Physics</a></td>
            </tr>
            <tr>
                <td class="tdtheme" ><a href="Chemistry.jsp" class="links">Chemistry</a></td>
            </tr>
            <tr>
                <td class="tdtheme"><a href="Biology.jsp" class="links">Biology</a></td>
            </tr>
            <tr>
                <td class="tdtheme"><a href="Mathematics.jsp" class="links">Mathematics</a></td>
            </tr>
            <tr>
                <td class="tdtheme"><a href="Programming.jsp" class="links">Programming</a></td>
            </tr>
            <tr>
                <td class="tdtheme"><a href="Music.jsp" class="links">Music</a></td>
            </tr>
            <tr>
                <td class="tdtheme"><a href="Language.jsp" class="links">Language</a></td>
            </tr>
            <tr>
                <td class="tdtheme"><a href="Help.jsp" class="links">Sports</a></td>
            </tr>
        </table>
        <hr style="width:90%;border: 1px solid grey;">
        <table>
            <tr>
                <td class="tdtheme">
                    <a href="Settings.jsp" class="links">
                    <img src="settings.jpg" width="21px" height="20px"> &nbsp;&nbsp;Settings
                    </a>
                </td>
            </tr>
            <tr>
                <td class="tdtheme">
                    <a href="SessionDestroy.jsp" class="links">
                    <img src="greylogout1.jpg" width="21px" height="20px"> &nbsp;&nbsp;Logout
                    </a>
                </td>
            </tr>
            <tr>
                <td class="tdtheme">
                    <a href="ContactUs.jsp" class="links">
                    <img src="contact.png" width="22px" height="21px"> &nbsp;&nbsp;Contact us
                    </a>
                </td>
            </tr>
            <tr>
                <td class="tdtheme">
                    <a href="MyProfile.jsp" class="links">
                    <img src="myprofile.jpg" width="22px" height="21px"> &nbsp;&nbsp;My Profile
                    </a>
                </td>
            </tr>
        </table>
    </div>
        
    <div class="contents">
        <h1 style="color:#f4f4f4; padding-top: 10px; font-size: 25px; align-content: center; margin-left: 50px; font-family: Verdana; font-weight: normal;">My Profile</h1>
        <form class="register">
            <table>
                <tr>
                    <td class="tdtheme">
                        <font style="font-family:Arial;font-size:32px; font-weight: bold;">
                        <%=name%>
                        </font> 
                        <br>
                        <br>
                        <font style="font-family:Arial;font-size:21px; font-weight: normal;color: slategray; ">
                        <%=userId%>
                        </font>
                        <br>
                        <font style="font-family:Arial;font-size:21px; font-weight: normal; color: slategray;">
                        <%=email%>
                        </font>
                        <br>
                        <font style="font-family:Arial;font-size:21px; font-weight: normal; color: slategray;">
                        <%=contact%>
                        </font>
                      
                    </td>
                </tr>
            </table>
        </form>
    </div>    
    <br>
    <div class="bottominfo"><br><hr style="margin-top: 5px; height: 5px;">
    </div>
    </body>
</html> 