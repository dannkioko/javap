/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.cardealer2;

import java.beans.*;
import java.io.Serializable;

/**
 *
 * @author dann
 */
public class CustomerBean implements Serializable, CustomerBeanInterface {
    
    private String name,address,number,email;
    public CustomerBean(){
        
    }
    @Override
    public void setName(String name){
        this.name = name;
    }
    @Override
    public String getName(){
        return this.name;
    }

    /**
     *
     * @param address
     */
    @Override
    public void setAddress(String address){
        this.address = address;
    }
    @Override
    public String getAddress(){
        return this.address;
    }
    @Override
    public String getNumber(){
        return this.number;
    }
    @Override
    public void setNumber(String number){
        this.number = number;
    }
    @Override
    public void setEmail(String email){
        this.email = email;
    }

    @Override
    public String getEmail() {
        return this.email;
    }
    
}
