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
public class CarBean implements Serializable, CarBeanInterface {
    
    private double price;
    private String type;
    public CarBean(){
        
    }
    @Override
    public double getPrice(){
        if(this.type.equals("BMW X6")){
            this.price = 14000000;
        }
        if(this.type.equals("Nissan Navara")){
            this.price = 8000000;
        }
        if(this.type.equals("Tesla Model 3")){
            this.price = 3900000;
        }
        if(this.type.equals("Toyota Supra")){
            this.price = 7600000;
        }
        return this.price;
    }
    @Override
    public void setPrice(double price){
        this.price = price;
    }
    @Override
    public void setType(String type){
        this.type = type;
    }
    @Override
    public String getCarType(){
        return this.type;
    }
    
}
