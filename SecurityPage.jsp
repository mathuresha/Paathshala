<% 
response.addHeader("Pragma","no-cache");
response.addHeader("Cache-Control","no-Store");
response.setHeader("Cache-Control","no-Store");

String value=(String)session.getAttribute("ID");
if(value==null)
{
    response.sendRedirect("LoginRegister.jsp");
}
if(session==null)
{
    response.sendRedirect("LoginRegister.jsp");
}
%>