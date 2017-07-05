<%-- 
    Document   : product
    Created on : 2017-6-16, 11:54:39
    Author     : ThinkPad
--%>


<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="user" scope="request" class="com.deitel.jhtp5.jsp.beans.User"/>
<jsp:useBean id="uregister" scope="request" class="com.deitel.jhtp5.jsp.beans.userregister"/>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>product</title>
    </head>
    <body>
        <%
         String userid=request.getParameter("phone");
         
        %>
        <p>
            User:<%= userid %>
        </p>
         <form action="cart.jsp?Userid=<%=userid%>" method="post">
                  <input type="submit" value="查看购物车" />
              </form>
          <%
            
          for(int i=0;i<uregister.getSize();i++)
          {
              
              
          %>
               
              
              <p>
                  <a href="detail.jsp?Userid=<%=userid%>&Productid=<%=i%>">
                     
               <img src="<%=uregister.getPicture(i)%>"/>
                  </a>
              </p> 
             
              <p>
                  商品名称：
               <%=uregister.getPName(i)%>    
              </p> 
              <p>
                  商品价格：
               <%=uregister.getPrice(i)%>    
              </p> 
              
            
              
             
              <%
                  
                  
                 
          }
        %>
   
 

<script type="text/javascript">
    function openAjsp(){
      this.location.href="cart.jsp";// 打开同路径下的b.jsp文件
    }
</script>
    </body>
</html>
