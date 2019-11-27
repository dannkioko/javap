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
public class OrderBean implements Serializable, OrderBeanInterface {
    private double carPrice;
    private final double taxRate = 7.5;
    private String tradeInValue;
    private Double[] options;
    private String[] optionsValues;
    private double tax = 0, total = 0, tradeIn = 0, subTotal = 0;
    public OrderBean(){
        
    }
    @Override
    public void setCarPrice(String type){
        if(type.equals("BMW X6")){
            this.carPrice = 14000000;
        }
        if(type.equals("Nissan Navara")){
            this.carPrice = 8000000;
        }
        if(type.equals("Tesla Model 3")){
            this.carPrice = 3900000;
        }
        if(type.equals("Toyota Supra")){
            this.carPrice = 7600000;
        }
    }
    @Override
    public void setOptionValues(String[] string){
        this.optionsValues=string;
    }
    @Override
    public String[] getOptionValues(){
        return this.optionsValues;
    }
    @Override
    public void setOptions(Double[] number){
        this.options=number;
    }
    @Override
    public Double[] getOptions(){
        return this.options;
    }
    @Override
    public void setTradeIn(String tradeInValue){
        this.tradeInValue = tradeInValue;
        if(this.tradeInValue.equals("5000")){
            this.tradeIn = 500000;
        }
        if(this.tradeInValue.equals("10000")){
            this.tradeIn = 250000;
        }
        if(this.tradeInValue.equals("15000")){
            this.tradeIn = 100000;
        }
        if(this.tradeInValue.equals("20000")){
            this.tradeIn = 50000;
        }
    }
    @Override
    public double getSubTotal(){
        double sub = 0;
        for (Double option : this.options) {
            sub = sub + option;
        }
        sub = sub + this.carPrice;
        this.subTotal = sub;
        return this.subTotal;
    }
    @Override
    public double getTaxRate(){
        return this.taxRate;
    }
    @Override
    public double getTotal(){
        this.total = this.getSubTotal()-this.getTax()+this.getTradeIn();
        return this.total;
    }
    @Override
    public double getTax(){
        double taxValue = 0;
        taxValue = this.carPrice/100*this.taxRate;
        this.tax = taxValue;
        return this.tax;
    }
    @Override
    public double getTradeIn(){
        return this.tradeIn;
    }
}
