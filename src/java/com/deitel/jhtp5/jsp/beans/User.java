/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.deitel.jhtp5.jsp.beans;
/**
 *
 * @author ThinkPad
 */
public class User {
    
    private String name,phone,password;
       
    public void setName(String name1)
    {
        name=name1;
    } 
    public String getName()
    {
        return name;
    }
     public void setPhone(String phone1)
    {
        phone=phone1;
    }
        public String getPhone()
    {
        return phone;
    }
 
       public void setPassword(String password1)
    {
       password=password1;
    }
             
           public String getPassword()
    {
        return password;
    }
}
