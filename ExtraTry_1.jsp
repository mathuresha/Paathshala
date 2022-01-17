<%@page import="java.sql.*"%>
<%
String languages="";
String lang[]=request.getParameterValues("lang");
for(int i=0;i<lang.length;i++){
    languages+=lang[i]+" ";
}

        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
        Statement st=con.createStatement();
        int i=st.executeUpdate("insert into languages values('"+languages+"')");
        out.println("Data is successfully inserted into database.");
        }
        catch(Exception e){
        System.out.println(e);
        }
%>