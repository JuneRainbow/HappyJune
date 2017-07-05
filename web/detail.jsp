<%-- 
    Document   : detail
    Created on : 2017-6-21, 20:24:34
    Author     : ThinkPad
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="uregister" scope="request" class="com.deitel.jhtp5.jsp.beans.userregister"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>detail</title>
    </head>
    <body>
          <%
               String Userid=request.getParameter("Userid");
               String Productid=request.getParameter("Productid");
             
         
               if(request.getParameter("value")==null)
               {
                  int i= Integer.parseInt(Productid);  
               
                %>
                <p>
             <img src="<%=uregister.getPicture(i)%>"/>
                </p>
                 <p>
                  商品名称：
               <%=uregister.getPName(i)%>    
              </p> 
              <p>
                  商品价格：
               <%=uregister.getPrice(i)%>    
              </p> 
              <p>
                  商品详情：
               <%=uregister.getDescribe(i)%>    
              </p> 
              
   
              <form action="detail.jsp?value=1&Userid=<%=Userid%>&Productid=<%=Productid%>" method="post">
                  <input type="submit" value="加入购物车" />
              </form>
            <%}else{
 int a= Integer.parseInt(Productid);
int b=a+1;
String Productid1="00"+b;
uregister.insert(Userid, Productid1);

%>

<jsp:forward page="product.jsp" />   
              
              <%



}%>  
    </body>
</html>
