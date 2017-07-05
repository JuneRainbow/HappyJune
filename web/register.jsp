<%-- 
    Document   : register
    Created on : 2017-6-15, 13:35:18
    Author     : ThinkPad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="user" scope="request" class="com.deitel.jhtp5.jsp.beans.User"/>
<jsp:useBean id="uregister" scope="request" class="com.deitel.jhtp5.jsp.beans.userregister"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
   
    <body>
         <jsp:setProperty name="user" property="*"/>
        <% 
           if(user.getPhone()==null||user.getPassword()==null)
           {
              
   %>
          <form method="post" action="register.jsp">
         <h1>Create account</h1>
         <h1>Name</h1>
            <h1><input type ="text" name="name"/></h1>
            <h1>Phone</h1>
            <h1><input type ="text" name="phone"/></h1>
            <h1>Password</h1>
            <h1><input type ="password" name="password"/></h1>
             <h1><input type ="submit" value="Create your account"/></h1>
            </form>
               
          <%
            }
else {
           uregister.addUser(user);
%>        
          <jsp:forward page ="login.jsp"/>
        <%}%>
    </body>
</html>
