<%-- 
    Document   : login
    Created on : 2017-6-15, 13:25:38
    Author     : ThinkPad
--%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="user" scope="request" class="com.deitel.jhtp5.jsp.beans.User"/>
<jsp:useBean id="uregister" scope="request" class="com.deitel.jhtp5.jsp.beans.userregister"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <% 
user.setPhone(request.getParameter("phone"));
user.setPassword(request.getParameter("password"));
           if(user.getPhone()==null||user.getPassword()==null)
           {
        %>
                <form method="post" action="login.jsp">
        <h1>Sign in</h1>
          <h1>Phone</h1>
            <h1><input type ="text" name="phone"/></h1>
            <h1>Password</h1>
            <h1><input type ="password" name="password"/></h1>
             <h1><input type ="submit" value="Sgin in"/></h1>
              <input type="button" onclick="openAjsp()" value="create your account"/>
                      <form/>
                      <%
                          }
else if(uregister.issucess(user)){
%>
 
 <jsp:forward page ="product.jsp"/>
     
 
                      <%}
 else
{ 
%>
<form method="post" action="login.jsp">
        <h1>Sign in</h1>
          <h1>Phone</h1>
            <h1><input type ="text" name="phone"/></h1>
            <h1>Password</h1>
            <h1><input type ="password" name="password"/></h1>
             <h1><input type ="submit" value="Sgin in"/></h1>
              <input type="button" onclick="openAjsp()" value="create your account"/>
              <h1>用户名密码输入不正确</h1>
                      <form/>
 <%}
%>
                      
<script type="text/javascript">
    function openAjsp(){
      this.location.href="register.jsp";// 打开同路径下的b.jsp文件
    }
</script>
    </body>
</html>
