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
    .tdtheme
    {
        border: 0px;
        border-bottom: 2px;
        margin: 0px auto;
        padding: 10px;
        font-family: arial;
        font-size: 20px;
        border-radius: 4px;
        opacity: 1px;
        margin-top: 25px;
        font-weight: 200;
        color:#2d4259;
        
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
  height: 620px;
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
  margin-left: 450px;
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
    <div class="topbar">Subjects you teach
    </div>
    <div>   
        <form class="register" action="SubSelectLogic.jsp">
          
            <h1 class="heading"> Science</h1>
            <hr style='width:35%;margin-left: 30px; margin-top: -33px; margin-bottom: 0px; border: 1.5px solid grey;'>
            <hr style='width:35%;margin-left: 620px; margin-top: 0px; border: 1.5px solid grey;'>
            <br>
            <div >
                <div class='checkbox'><input type="checkbox" name="subject" value="Physics">Physics</div>                
                <div class='checkbox'><input type="checkbox" name="subject" value="Chemistry">Chemistry</div>
                <div class='checkbox'><input type='checkbox' name="subject" value="Biology">Biology</div>
                <div class='checkbox'><input type="checkbox" name="subject" value="Mathematics">Mathematics</div>
             
            </div>
            
            <h3 class="heading"> Programming</h3>
            <hr style='width:35%;margin-left: 30px; margin-top: -33px; margin-bottom: 0px; border: 1.5px solid grey;'>
            <hr style='width:35%;margin-left: 620px; margin-top: 0px; border: 1.5px solid grey;'>
            <br>
            <div >
                <div class='checkbox'><input type='checkbox'name="subject" value="Java2.0">Java2.0</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="Python">Python</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="Python with ML">Python with ML</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="CCpp">C and C++</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="DSA">Data Structure Algorithms</div>
                            
            </div>
            
            <h3 class="heading"> Music</h3>
            <hr style='width:35%;margin-left: 30px; margin-top: -33px; margin-bottom: 0px;  border: 1.5px solid grey;'>
            <hr style='width:35%;margin-left: 620px; margin-top: 0px; border: 1.5px solid grey;'>
            <br>
            <div >
                <div class='checkbox'><input type='checkbox'name="subject" value="Vocal">Vocal</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="Guitar">Guitar</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="Sitar">Sitar</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="Flute">Flute</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="Piano">Piano</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="Tabla">Tabla</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="Violin">Violin</div>
             
            </div>
            
            <h3 class="heading"> Language</h3>
            <hr style='width:35%;margin-left: 30px; margin-top: -33px; margin-bottom: 0px; border: 1.5px solid grey;'>
            <hr style='width:35%;margin-left: 620px; margin-top: 0px;  border: 1.5px solid grey;'>
            <br>
            <div >
                <div class='checkbox'><input type='checkbox'name="subject" value="English">English</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="Hindi">Hindi</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="Sanskrit">Sanskrit</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="French">French</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="German">German</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="Spanish">Spanish</div>
             
            </div>
            
            <h3 class="heading"> Sports</h3>
            <hr style='width:35%;margin-left: 30px; margin-top: -33px; margin-bottom: 0px;border: 1.5px solid grey;'>
            <hr style='width:35%;margin-left: 620px; margin-top: 0px;border: 1.5px solid grey;'>
            <br>
            <div >
                <div class='checkbox'><input type='checkbox'name="subject" value="Cricket">Cricket</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="Football">Football</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="Tennis">Tennis</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="TT">Table Tennis</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="Hockey">Hockey</div>
                <div class='checkbox'><input type='checkbox'name="subject" value="Badminton">Badminton</div>
            </div>
            <input type="submit" value="Submit" class="button">
                          
               
        </form>
    </div>    
    <br>
    
    </body>
</html>