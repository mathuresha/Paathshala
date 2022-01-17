<%@include file ="SecurityPage.jsp" %>
<%@page import="java.sql.DriverManager, java.sql.Connection, java.sql.PreparedStatement"%>
<%
    String sub[]=request.getParameterValues("subject");
    
    String id=value;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    
    PreparedStatement ps = con.prepareStatement("insert into subscience values (?,?,?,?,?)"); 
    ps.setString(1,id);
    ps.setInt(2,0);
    ps.setInt(3,0);
    ps.setInt(4,0);
    ps.setInt(5,0);
    
    PreparedStatement psc = con.prepareStatement("insert into subcoding values (?,?,?,?,?,?)"); 
    psc.setString(1,id);
    psc.setInt(2,0);
    psc.setInt(3,0);
    psc.setInt(4,0);
    psc.setInt(5,0);
    psc.setInt(6,0);
    
    PreparedStatement psm = con.prepareStatement("insert into submusic values (?,?,?,?,?,?,?,?)"); 
    psm.setString(1,id);
    psm.setInt(2,0);
    psm.setInt(3,0);
    psm.setInt(4,0);
    psm.setInt(5,0);
    psm.setInt(6,0);
    psm.setInt(7,0);
    psm.setInt(8,0);
    
    PreparedStatement psl = con.prepareStatement("insert into sublang values (?,?,?,?,?,?,?)"); 
    psl.setString(1,id);
    psl.setInt(2,0);
    psl.setInt(3,0);
    psl.setInt(4,0);
    psl.setInt(5,0);
    psl.setInt(6,0);
    psl.setInt(7,0);
    
    PreparedStatement pss = con.prepareStatement("insert into subsports values (?,?,?,?,?,?,?)"); 
    pss.setString(1,id);
    pss.setInt(2,0);
    pss.setInt(3,0);
    pss.setInt(4,0);
    pss.setInt(5,0);
    pss.setInt(6,0);
    pss.setInt(7,0);
    
    ps.executeUpdate();
    psc.executeUpdate();
    psm.executeUpdate();
    psl.executeUpdate();
    pss.executeUpdate();
    
        if(sub!=null)
        {
            for(int i=0;i<sub.length;++i)
            {
                if(sub[i].equals("Physics"))
                { 
                    PreparedStatement ps1 = con.prepareStatement("update subscience set Physics=? where TeacherId=? ");
                    ps1.setInt(1,1);
                    ps1.setString(2,id);
                    ps1.executeUpdate();
                }
                if(sub[i].equals("Chemistry"))
                { 
                    PreparedStatement ps1 = con.prepareStatement("update subscience set Chemistry=? where TeacherId=? ");
                    ps1.setInt(1,1);
                    ps1.setString(2,id);
                    ps1.executeUpdate();
                }
                if(sub[i].equals("Mathematics"))
                { 
                    PreparedStatement ps1 = con.prepareStatement("update subscience set Maths=? where TeacherId=? ");
                    ps1.setInt(1,1);
                    ps1.setString(2,id);
                    ps1.executeUpdate();
                }
                if(sub[i].equals("Biology"))
                { 
                    PreparedStatement ps1 = con.prepareStatement("update subscience set Biology=? where TeacherId=? ");
                    ps1.setInt(1,1);
                    ps1.setString(2,id);
                    ps1.executeUpdate();
                }
                if(sub[i].equals("Java2.0"))
                { 
                    PreparedStatement psc1 = con.prepareStatement("update subcoding set Java=? where TeacherId=? ");
                    psc1.setInt(1,1);
                    psc1.setString(2,id);
                    psc1.executeUpdate();
                }
                if(sub[i].equals("Python"))
                { 
                    PreparedStatement psc1 = con.prepareStatement("update subcoding set Python=? where TeacherId=? ");
                    psc1.setInt(1,1);
                    psc1.setString(2,id);
                    psc1.executeUpdate();
                }
                if(sub[i].equals("Python with ML"))
                { 
                    PreparedStatement psc1 = con.prepareStatement("update subcoding set ML=? where TeacherId=? ");
                    psc1.setInt(1,1);
                    psc1.setString(2,id);
                    psc1.executeUpdate();
                }
                if(sub[i].equals("CCpp"))
                { 
                    PreparedStatement psc1 = con.prepareStatement("update subcoding set CCpp=? where TeacherId=? ");
                    psc1.setInt(1,1);
                    psc1.setString(2,id);
                    psc1.executeUpdate();
                }
                if(sub[i].equals("DSA"))
                { 
                    PreparedStatement psc1 = con.prepareStatement("update subcoding set DSA=? where TeacherId=? ");
                    psc1.setInt(1,1);
                    psc1.setString(2,id);
                    psc1.executeUpdate();
                }
                if(sub[i].equals("Vocal"))
                { 
                    PreparedStatement psm1 = con.prepareStatement("update submusic set Vocal=? where TeacherId=? ");
                    psm1.setInt(1,1);
                    psm1.setString(2,id);
                    psm1.executeUpdate();
                }
                if(sub[i].equals("Guitar"))
                { 
                    PreparedStatement psm1 = con.prepareStatement("update submusic set Guitar=? where TeacherId=? ");
                    psm1.setInt(1,1);
                    psm1.setString(2,id);
                    psm1.executeUpdate();
                }
                if(sub[i].equals("Sitar"))
                { 
                    PreparedStatement psm1 = con.prepareStatement("update submusic set Sitar=? where TeacherId=? ");
                    psm1.setInt(1,1);
                    psm1.setString(2,id);
                    psm1.executeUpdate();
                }
                if(sub[i].equals("Flute"))
                { 
                    PreparedStatement psm1 = con.prepareStatement("update submusic set Flute=? where TeacherId=? ");
                    psm1.setInt(1,1);
                    psm1.setString(2,id);
                    psm1.executeUpdate();
                }
                if(sub[i].equals("Piano"))
                { 
                    PreparedStatement psm1 = con.prepareStatement("update submusic set Piano=? where TeacherId=? ");
                    psm1.setInt(1,1);
                    psm1.setString(2,id);
                    psm1.executeUpdate();
                }
                if(sub[i].equals("Tabla"))
                { 
                    PreparedStatement psm1 = con.prepareStatement("update submusic set Tabla=? where TeacherId=? ");
                    psm1.setInt(1,1);
                    psm1.setString(2,id);
                    psm1.executeUpdate();
                }
                if(sub[i].equals("Violin"))
                { 
                    PreparedStatement psm1 = con.prepareStatement("update submusic set Violin=? where TeacherId=? ");
                    psm1.setInt(1,1);
                    psm1.setString(2,id);
                    psm1.executeUpdate();
                }
                if(sub[i].equals("English"))
                { 
                    PreparedStatement psl1 = con.prepareStatement("update sublang set English=? where TeacherId=? ");
                    psl1.setInt(1,1);
                    psl1.setString(2,id);
                    psl1.executeUpdate();
                }
                if(sub[i].equals("Hindi"))
                { 
                    PreparedStatement psl1 = con.prepareStatement("update sublang set Hindi=? where TeacherId=? ");
                    psl1.setInt(1,1);
                    psl1.setString(2,id);
                    psl1.executeUpdate();
                }
                if(sub[i].equals("Sanskrit"))
                { 
                    PreparedStatement psl1 = con.prepareStatement("update sublang set Sanskrit=? where TeacherId=? ");
                    psl1.setInt(1,1);
                    psl1.setString(2,id);
                    psl1.executeUpdate();
                }
                if(sub[i].equals("French"))
                { 
                    PreparedStatement psl1 = con.prepareStatement("update sublang set French=? where TeacherId=? ");
                    psl1.setInt(1,1);
                    psl1.setString(2,id);
                    psl1.executeUpdate();
                }
                if(sub[i].equals("German"))
                { 
                    PreparedStatement psl1 = con.prepareStatement("update sublang set German=? where TeacherId=? ");
                    psl1.setInt(1,1);
                    psl1.setString(2,id);
                    psl1.executeUpdate();
                }
                if(sub[i].equals("Spanish"))
                { 
                    PreparedStatement psl1 = con.prepareStatement("update sublang set Spanish=? where TeacherId=? ");
                    psl1.setInt(1,1);
                    psl1.setString(2,id);
                    psl1.executeUpdate();
                }
                if(sub[i].equals("Cricket"))
                { 
                    PreparedStatement pss1 = con.prepareStatement("update subsports set Cricket=? where TeacherId=? ");
                    pss1.setInt(1,1);
                    pss1.setString(2,id);
                    pss1.executeUpdate();
                }
                if(sub[i].equals("Football"))
                { 
                    PreparedStatement pss1 = con.prepareStatement("update subsports set Football=? where TeacherId=? ");
                    pss1.setInt(1,1);
                    pss1.setString(2,id);
                    pss1.executeUpdate();
                }
                if(sub[i].equals("Tennis"))
                { 
                    PreparedStatement pss1 = con.prepareStatement("update subsports set Tennis=? where TeacherId=? ");
                    pss1.setInt(1,1);
                    pss1.setString(2,id);
                    pss1.executeUpdate();
                }
                if(sub[i].equals("TT"))
                { 
                    PreparedStatement pss1 = con.prepareStatement("update subsports set TT=? where TeacherId=? ");
                    pss1.setInt(1,1);
                    pss1.setString(2,id);
                    pss1.executeUpdate();
                }
                if(sub[i].equals("Hockey"))
                { 
                    PreparedStatement pss1 = con.prepareStatement("update subsports set Hockey=? where TeacherId=? ");
                    pss1.setInt(1,1);
                    pss1.setString(2,id);
                    pss1.executeUpdate();
                }
                if(sub[i].equals("Badminton"))
                { 
                    PreparedStatement pss1 = con.prepareStatement("update subsports set Badminton=? where TeacherId=? ");
                    pss1.setInt(1,1);
                    pss1.setString(2,id);
                    pss1.executeUpdate();
                }
            }
        }
             response.sendRedirect("Details.jsp");
    
%>