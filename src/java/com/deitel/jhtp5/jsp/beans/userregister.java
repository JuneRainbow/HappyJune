/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.deitel.jhtp5.jsp.beans;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ThinkPad
 */
public class userregister {
    private Connection conn;
     private Statement stmt;
     public userregister() throws ClassNotFoundException{
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databasename=shoppingweb;user=JUNE;password=SJW52131306");
            stmt = conn.createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(userregister.class.getName()).log(Level.SEVERE, null, ex);
        }
     }
     
     public void addUser(User user) throws SQLException
     {
         stmt.execute("insert into userinfo (name,phone,password) values('"+user.getName()+"','"+user.getPhone()+"','"+user.getPassword()+"')");
     }
     
     public boolean issucess(User user) throws SQLException
     {
         boolean a = false;
         ResultSet resultset=stmt.executeQuery("select * from userinfo");
                while(resultset.next())
                {
                String userphone1=resultset.getString("phone");
                String userpassword1=resultset.getString("password");
                if((userphone1.trim()).equals(user.getPhone())&&(userpassword1.trim()).equals(user.getPassword()))
                {
                    a=true;
                    break;
                }
                else
                    a=false;
                }
                return a;
     }
     
public int getSize() throws SQLException     
{
     List number= new ArrayList();
 ResultSet resultset=stmt.executeQuery("select pnumber from product");
  while(resultset.next())
          {
             number.add(resultset.getString("pnumber"));  
          }
  return number.size();
}
     public String getNumber(int i) throws SQLException
     {
         List number= new ArrayList();
          ResultSet resultset=stmt.executeQuery("select pnumber from product");
           while(resultset.next())
          {
             number.add(resultset.getString("pnumber"));  
          }
           return (String) number.get(i);
     }
     public String getPName(int i) throws SQLException
     {
          List name = new ArrayList();
          ResultSet resultset=stmt.executeQuery("select pname from product");
           while(resultset.next())
          {
             name.add(resultset.getString("pname"));  
          }
           return (String) name.get(i);
     }
     public String getPrice(int i) throws SQLException
     {
          List price = new ArrayList();
          ResultSet resultset=stmt.executeQuery("select pprice from product");
           while(resultset.next())
          {
             price.add(resultset.getString("pprice"));  
          }
           return (String) price.get(i);
     }
     public String getPicture(int i) throws SQLException
     {
          List picture1 = new ArrayList();
          ResultSet resultset=stmt.executeQuery("select picture from product");
           while(resultset.next())
          {
              picture1.add((resultset.getString("picture")).trim());  
          }
           return (String) picture1.get(i);
     }
       public String getDescribe(int i) throws SQLException
     {
          List describe = new ArrayList();
          ResultSet resultset=stmt.executeQuery("select pdescribe from product");
           while(resultset.next())
          {
             describe.add(resultset.getString("pdescribe"));  
          }
           return (String) describe.get(i);
     }
       List index =new ArrayList();
       public void setIndex(int i)
       {
           
           index.add(i);
           
       }
       public List getIndex()
       {
           return index;
       }
       public void insert(String userid,String productid) throws SQLException
       {
          stmt.execute("insert into purchase(phone,pnumber) values('"+userid+"','"+productid+"')");
       }
      public  List searchCart(String userid) throws SQLException
      {
          List array=new ArrayList();
          ResultSet resultset=stmt.executeQuery("select pnumber from purchase where phone='"+userid+"'");
          while(resultset.next())
          {
              array.add(resultset.getString("pnumber"));
          }
          return array;
      }
     public void setAddress(String userid,String address) throws SQLException
     {
         
         stmt.executeUpdate("update purchase set address='"+address+"' where phone='"+userid+"'");
     }
}
