<%-- 
    Document   : address
    Created on : 2017-6-21, 23:05:58
    Author     : ThinkPad
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="user" scope="request" class="com.deitel.jhtp5.jsp.beans.User"/>
<jsp:useBean id="uregister" scope="request" class="com.deitel.jhtp5.jsp.beans.userregister"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Address</title>
    </head>
    <body>
        <%
            String Userid=request.getParameter("Userid");
            
            if(request.getParameter("value")==null)
            {

        %>
        <form action="address.jsp?value=1&Userid=<%=Userid%>" method="post">
        <p>
            请输入配送地址
        </p>
        <p>
            <input type="text" name="Address"/>
        </p>
        <p>
            <input type="submit" value="确认订单"/>
        </p>
        </form>
        <%}else{
String address=request.getParameter("Address");
uregister.setAddress(Userid, address);
%>
<p>
    订单提交成功
</p>
        <%
}%>
    </body>
</html>
