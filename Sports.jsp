<html>
    <style>
    .sidebar {
        background-color: #f4f4f4;
        margin-top:20px;
        width: 15%;
        height: 550px;
        
    }
    .topbar {
        background-color: #2d4259;
        margin:10px auto;
  
        width:100%;
        height:60px;
    }
    .contents {
        background-color:slategray;
        width:83%;
        height:700px;
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
        border:20px;
        border-color: transparent;
        
        
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
.contentblock
{
    background-color: #f4f4f4;
    width: 370px;
    height: 230px;
    box-shadow: 2px 2px 8px black;
    margin-left: 20px;
    border-radius: 6px;
    transition: transform .2s;
}
.contentblock:hover
{
    transform: scale(1.1);
}
    </style>
    <body>
        <div class="topbar" style="margin-top:0px;">
        <div >
            <h1  class="heading" style="padding-top: 13px;">Welcome to <font style='color:lightblue; font-weight:bold;'>Paathshala</font>!</h1>
        </div>
        <div class="topbar" style="margin-left:1350px; width: 50px;  align-content: center; margin-top: -58px;height: 20px;">
            <a href="FeedbackTeacher.jsp" class="links" style="color:#f4f4f4; font-size: 16px; font-family: Verdana;">Teacher Review</a>
        </div>
        <div class="topbar" style="margin-left:1230px; width: 50px;  align-content: center; margin-top: -20px; height: 20px;">
            <a href="FeedbackWebsite.jsp" class="links" style="color:#f4f4f4; font-size: 16px; padding-top: 30px; font-family: Verdana;">Feedback</a>
        </div>
        <div class="topbar" style="margin-left:1150px; width: 50px;  align-content: center; margin-top: -30px; height: 20px;">
            <a href="frontPage.jsp" class="links" style="color:#f4f4f4; font-size: 16px; padding-top: 30px; font-family: Verdana;">Home</a>
        </div>
    </div>
        
    <div class="sidebar"> 
        <br>
        <table style="margin-top:10px; width: 95%">
            <tr>
                <td style="font-family: Verdana; color:#2d4259; font-size: 21px; padding-left:9px;">SUBJECTS</td>
            </tr>
            <tr>
                <td class="tdtheme"><a href="Physics.jsp" class="links">Physics</a></td>
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
                <td class="tdtheme" style="padding-top:15px;background-color:lightgrey;"><font class="links">Sports</font></td>
                
            </tr>
        </table>
        <hr style="width:90%;border: 1px solid grey;">
        <table>
            <tr>
                <td class="tdtheme">
                    <a href="Settings.jsp" class="links">
                    <image src="settings.jpg" width="21px" height="20px"> &nbsp;&nbsp;Settings
                    </a>
                </td>
            </tr>
            <tr>
                <td class="tdtheme">
                    <a href="SessionDestroy.jsp" class="links">
                    <image src="greylogout1.jpg" width="21px" height="20px"> &nbsp;&nbsp;Logout
                    </a>
                </td>
            </tr>
            <tr>
                <td class="tdtheme">
                    <a href="ContactUs.jsp" class="links">
                    <image src="help.png" width="21px" height="20px"> &nbsp;&nbsp;Contact Us
                    </a>
                </td>
            </tr>
            <tr>
                <td class="tdtheme">
                    <a href="MyProfile.jsp" class="links">
                    <image src="myProfile.jpg" width="21px" height="20px"> &nbsp;&nbsp;My Profile
                    </a>
                </td>
            </tr>
        </table>
    </div>
        
    <div class="contents">
        <h1 style="color:#f4f4f4; padding-top: 10px; font-size: 25px; align-content: center; margin-left: 15px; font-family: Verdana; font-weight: normal;">Teachers for Sports:</h1>
        <br><br><br>
        <table style="cellpadding:10px;">
            <tr>
            <td >
                <div class="contentblock">
                     Teacher 1
               </div>
            </td>
            <td >
                <div class="contentblock">
                     Teacher 2
                </div>
                
            </td >
            <td >
               <div class="contentblock">
                     Teacher 3
               </div>
                
            </td>
            </table>
    </div>   
        
    <br>
    <div class="bottominfo"><br>
        <hr style="margin-top: 5px; height: 5px;">
        <h2 style="align-content: center; font-weight: normal;font-size: 25px; color: #f4f4f4;  padding-left: 650px;">About us</h2>
    </div>
    </body>
</html>