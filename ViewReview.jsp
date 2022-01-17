<%@include file ="SecurityPage.jsp" %>
<%@page import="java.sql.DriverManager, java.sql.Connection, java.sql.PreparedStatement,java.sql.ResultSet, java.util.ArrayList"%>
<%
    String name=request.getParameter("name");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
     PreparedStatement st=con.prepareStatement("select * from teacherfeedback where TName=?");
        st.setString(1,name);    
        
            ArrayList list1=new ArrayList();
            ArrayList list2=new ArrayList();
            ArrayList list3=new ArrayList();
            ArrayList list4=new ArrayList();
            ArrayList list5=new ArrayList();
            ArrayList list6=new ArrayList();
            ArrayList list7=new ArrayList();
            ArrayList list8=new ArrayList();
            ArrayList list9=new ArrayList();
        ResultSet rs=st.executeQuery();
        
        while(rs.next())
        {
            list1.add(rs.getString(1));
            list2.add(rs.getString(2));
            list3.add(rs.getString(3));
            list4.add(rs.getString(4));
            list5.add(rs.getString(5));
            list6.add(rs.getString(6));
            list7.add(rs.getFloat(7));
            list8.add(rs.getString(8));
            list9.add(rs.getString(9));        
          
        }
%>
<html>
<style>
.topbar 
{
  width: 450px;
  margin-top: 10px;
  line-height: 58px;
  margin: 25px auto;
  font-family: Arial;
  font-size: 30px;
  font-weight: 500;
  color: white;
  text-align: center;
  text-shadow: 2px 1px 2px black;
  background: slategrey;
  border-radius: 3px;
    }
.fields
  {
  width: 70%;
  height: 35px;
  margin-top: 2px;
  font-weight: 500;
  background: none;
  border: 0;
  border-bottom: 1px solid;
  margin-left:40px;
}
.tdtheme
{
    border: 0px;
    border-bottom: 2px;
    margin: 0px auto;
    padding: 13px;
    font-family: arial;
    font-size: 17px;
    align-content: center;
    opacity: 1px;
    margin-top: 10px;
    font-weight: 200;
    color:#2d4259;
    margin-left: 20px;
    border-right: 1px solid black;
}
.links
{
    color: #2d4259;
    text-decoration: none;
        
}
.register 
{
  margin: 0 auto;
  margin-top: 10px;
  width: 1100px;
  height: 780px;
  padding: 25px;
  background: #f4f4f4;
  border-radius: 3px;
}
.heading 
{
  margin: 40px auto;
  margin-bottom: 20px;
  font-size: 24px;
  font-family: Verdana;
  color: #5e578c;
  text-align: center;
  font-weight: normal;
}
.checkbox
{
    margin: 0 auto;
    text-align: center;
    margin-top: 2px;
    font-family: Arial;
    display: inline;
    font-size: 18px;
    color: #2d4259;
    padding-right: 15px;     
    border-right: 0.5px solid grey;
}
.checkbox input{
  margin: 0 5px 0 30px;
}
.button
{
  width: 12%;
  height: 35px;
  margin-top: 30px;
  margin-left: 420px;
  font-size: 16px;
  font-weight: bold;
  text-align: center;
  background: none;
  border: 1px solid;
  border-color: graytext;
  border-radius: 2px;  
}
    </style>
    <body style='background-color: #2d4259;'>
    <div class="topbar">Help us provide you best
    </div>
    <div>   
        <form class="register" action="">
            
            
            <h1 class="heading"> Student Reviews</h1>
            <hr style='width:35%;margin-left: 30px; margin-top: -33px; margin-bottom: 0px; border: 1.5px solid grey;'>
            <hr style='width:35%;margin-left: 670px; margin-top: 0px; border: 1.5px solid grey;'>
            <h2 style='font-size:18px;font-family: arial; color:#2d4259;padding-top: 10px;padding-left: 45px;font-weight: 500;'>Thank you for using Paathshala! We value all our customers and strive to meet everyone's needs.</h2>
            <table class="tdtheme" style="margin-left:200px; border:none;">
                <tr>
                    <td class="tdtheme" style="border:none; width:270px; margin-left: 70px;" >
                        Enter your name
                    </td>
                    <td class="tdtheme" style="border:none; width: 250px;">
                        <input type="text" name="name" class="fields">
                    </td>
                </tr> 
            </table>
            
            <input type="submit" value="View" class="button" style="margin-top: -20px; ">
            <br>
            <table class="tdtheme" style="border:none;">
                <tr>
                <th class="tdtheme">Date</th>
                <th class="tdtheme">Name</th>
                <th class="tdtheme">Course</th>
                <th class="tdtheme">Quality Education</th>
                <th class="tdtheme">Issues with Faculty</th>
                <th class="tdtheme">Abusive behaviour</th>
                <th class="tdtheme">Rating</th>
                <th class="tdtheme">Remarks</th>
                <th class="tdtheme">Contact</th>
                </tr>
                <%
                    for(int i=0;i<list1.size();i++)
                    {
                %>
                <tr>
                    <td class="tdtheme"><%=list1.get(i)%></td>
                    <td class="tdtheme"><%=list2.get(i)%></td>
                    <td class="tdtheme"><%=list3.get(i)%></td>
                    <td class="tdtheme"><%=list4.get(i)%></td>
                    <td class="tdtheme"><%=list5.get(i)%></td>
                    <td class="tdtheme"><%=list6.get(i)%></td>
                    <td class="tdtheme"><%=list7.get(i)%></td>
                    <td class="tdtheme"><%=list8.get(i)%></td>
                    <td class="tdtheme"><%=list9.get(i)%></td>
                </tr>
                <%}%>
            </table>
        </form>
    </div>    
    <br>
    
    </body>
</html>