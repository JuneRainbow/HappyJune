<%-- 
    Document   : cart
    Created on : 2017-6-16, 21:44:55
    Author     : ThinkPad
--%>


<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="user" scope="request" class="com.deitel.jhtp5.jsp.beans.User"/>
<jsp:useBean id="uregister" scope="request" class="com.deitel.jhtp5.jsp.beans.userregister"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cart</title>
    </head>
    <body>
        <%
            String Userid=request.getParameter("Userid");
        %>
        <p>
                <%=Userid%>的购物车
            </p>
        
        <%
            List array=uregister.searchCart(Userid);
            double totalprice=0;
            for(int i=0;i<array.size();i++)
            {
                String a=(String)array.get(i);
               String b=a.replaceFirst("^0*", "");
               int c=Integer.parseInt(b);
               int d=c-1;
               double price=new Double((uregister.getPrice(d)).toString());
               
               totalprice=totalprice+price;
            }
            
            %>
         <p>
                总金额：<%=totalprice%>
            </p>
             <form action="address.jsp?Userid=<%=Userid%>" method="post">
                  <input type="submit" value="提交订单" />
              </form>
                  
            <%
            for(int i=0;i<array.size();i++)
            {
               String a=(String)array.get(i);
               String b=a.replaceFirst("^0*", "");
               int c=Integer.parseInt(b);
               int d=c-1;
            %>
            
            
           
            <p> 
                <img src="<%=uregister.getPicture(d)%>"/>
            </p>
             <p>
                  商品名称：
               <%=uregister.getPName(d)%>    
              </p> 
              <p>
                  商品价格：
               <%=uregister.getPrice(d)%>    
              </p> 
             <%}%>
    </body>
</html>
