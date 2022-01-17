<%@include file ="SecurityPage.jsp" %>
<html>
    <style>
    .topbar 
    {
  width: 400px;
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
    font-size: 20px;
    border-radius: 4px;
    opacity: 1px;
    margin-top: 10px;
    font-weight: 200;
    color:#2d4259;
    margin-left: 100px;
    width: 900px;
    
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
  width: 1000px;
  height: 650px;
  padding: 25px;
  background: #f4f4f4;
  border-radius: 3px;
}
.heading {
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
  width: 20%;
  height: 42px;
  margin-top: 25px;
  margin-left: 320px;
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
    <div class="topbar">Tell us about you
    </div>
    <div>   
        <form class="register" action="DetailsLogic.jsp">
            
            
            <h1 class="heading"> Your Details</h1>
            <hr style='width:38%;margin-left:10px; margin-top: -33px; margin-bottom: 0px; border: 1.5px solid grey;'>
            <hr style='width:38%;margin-left: 605px; margin-top: 0px; border: 1.5px solid grey;'>
            <h2 style='font-size:16px;font-family: arial; color:#2d4259;padding-top: 10px;padding-left: 45px;font-weight: bold;'>Please enter your valid details. </h2>
            
            <table class='tdtheme'>
                <tr>
                    <td class="tdtheme">
                        What is your highest qualification?
                    </td>
                    <td class="tdtheme">
                        <input type="text" class="fields" name="qualification" placeholder="eg. M.tech in CSE">
                    </td>
                </tr>
                <tr>
                    <td class="tdtheme">
                        Do you have any teaching experience?
                    </td>
                    <td class="tdtheme">
                        <input type="text" class="fields" name="exp" placeholder="(in years)">
                    </td>
                </tr>
                <tr>
                    <td class="tdtheme">
                        Address of your teaching center
                    </td>
                    <td class="tdtheme">
                        <input type="textarea" class="fields" name="add" placeholder="with city name">
                    </td>
                </tr>
                <tr>
                    <td class="tdtheme">
                        Pincode
                    </td>
                    <td class="tdtheme">
                        <input type="text" class="fields" name="pin">
                    </td>
                </tr>
                <tr>
                    <td class="tdtheme">
                        Enquiry number for students
                    </td>
                    <td class="tdtheme">
                        <input type="text" class="fields" name="number" >
                    </td>
                </tr>
                <tr>
                    <td class="tdtheme">
                        Description
                    </td>
                    <td class="tdtheme">
                        <textarea class="fields" name="description" height="100px" placeholder="about you & your way of teaching"></textarea>>
                    </td>
                </tr>
            </table>
	<a href="SubjectSelection.jsp">
                <img src="back1.png" width="30px" height="30px" alt="Back" style="margin-top: 50px; margin-left: 15px;">
            </a>
            <input type="submit" value="Submit" class="button" style="margin-top: -20px; margin-left: 350px;">        
 
        </form>
    </div>    
    <br>
    
    </body>
</html>