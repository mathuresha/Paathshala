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
    font-size: 20px;
    border-radius: 4px;
    opacity: 1px;
    margin-top: 10px;
    font-weight: 200;
    color:#2d4259;
    margin-left: 20px;
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
  height: 700px;
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
    <div class="topbar">Help us provide you best
    </div>
    <div>   
        <form class="register" action="FeedbackWebLogic.jsp">
            
            
            <h1 class="heading"> Feedback Form</h1>
            <hr style='width:35%;margin-left: 30px; margin-top: -33px; margin-bottom: 0px; border: 1.5px solid grey;'>
            <hr style='width:35%;margin-left: 670px; margin-top: 0px; border: 1.5px solid grey;'>
            <h2 style='font-size:18px;font-family: arial; color:#2d4259;padding-top: 10px;padding-left: 45px;font-weight: 500;'>Thank you for using Paathshala! We value all our customers and strive to meet everyone's needs.</h2>
            <table class='tdtheme'>
                <tr>
                    <td class='tdtheme'>
                        Date(enter today's date)
                    </td>
                    <td class='tdtheme'>
                        <input type="date" class="fields" placeholder="Enter today's date" name="Date" >
                    </td>
                </tr>
                <tr>
                    <td class='tdtheme' >
                        Were you satisfied with the customer service provided by us?
                    </td>
                    <td class='tdtheme'>
                        <div class='checkbox'><input type="radio" id="Yes"name="radio1" value="Yes"><label for="Yes">Yes</label></div>
                        <div class='checkbox'><input type="radio" id="No"name="radio1" value="No"><label for="No">No</label></div>
                        <div class='checkbox'><input type="radio" id="Somewhat" name="radio1" value="Somewhat"><label for="Somewhat">Somewhat</label></div>
                    </td>
                </tr>
                <tr>
                    <td class='tdtheme' >
                        Was the customer service provided to you in an accessible manner?
                    </td>
                    <td class='tdtheme'>
                        <div class='checkbox'><input type="radio" id="Yes"name="radio2" value="Yes"><label for="Yes">Yes</label></div>
                        <div class='checkbox'><input type="radio" id="No"name="radio2" value="No"><label for="No">No</label></div>
                        <div class='checkbox'><input type="radio" id="Somewhat" name="radio2" value="Somewhat"><label for="Somewhat">Somewhat</label></div>
                    </td>
                </tr>
                <tr>
                    <td class='tdtheme' >
                        Did you experience any problem accessing our website services?
                    </td>
                    <td class='tdtheme'>
                        <div class='checkbox'><input type="radio" id="Yes"name="radio3" value="Yes"><label for="Yes">Yes</label></div>
                        <div class='checkbox'><input type="radio" id="No"name="radio3" value="No"><label for="No">No</label></div>
                        <div class='checkbox'><input type="radio" id="Somewhat" name="radio3" value="Somewhat"><label for="Somewhat">Somewhat</label></div>
                    </td>
                </tr>
                <tr>
                    <td class='tdtheme' >
                        Would you recommend this website to your friends?
                    </td>
                    <td class='tdtheme'>
                        <div class='checkbox'><input type="radio" id="Yes"name="radio4" value="Yes"><label for="Yes">Yes</label></div>
                        <div class='checkbox'><input type="radio" id="No"name="radio4" value="No"><label for="No">No</label></div>
                        <div class='checkbox'><input type="radio" id="Somewhat" name="radio4" value=Somewhat"><label for="Somewhat">Somewhat</label></div>
                    </td>
                </tr>
                <tr>
                    <td class='tdtheme' >
                        How much would you like to rate our website out of 5?
                    </td>
                    <td class='tdtheme'>
                        <input type="text" class="fields" placeholder="Rating out of 5" name="Rating" >
                    </td>
                </tr>
                <tr>
                    <td class='tdtheme' >
                        Any suggestions?
                    </td>
                    <td class='tdtheme'>
                        <input type="textarea" class="fields" placeholder="Comments" name="suggest" >
                    </td>
                </tr>
                <tr>
                    <td class='tdtheme' >
                        Your contact number
                    </td>
                    <td class='tdtheme'>
                        <input type="text" class="fields" placeholder="Contact number(optional)" name="contactNo">
                    </td>
                </tr>
            </table>
            <input type="reset" class="button">
            <input type="submit" value="Submit" class="button" style="margin-top: -20px; margin-left: 10px;">
                
 
        </form>
    </div>    
    <br>
    
    </body>
</html>