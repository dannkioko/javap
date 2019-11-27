/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.cardealer2;

/**
 *
 * @author dann
 */
public interface OrderBeanInterface {

    String[] getOptionValues();

    Double[] getOptions();

    double getSubTotal();

    double getTax();

    double getTaxRate();

    double getTotal();

    double getTradeIn();

    void setOptionValues(String[] string);

    void setOptions(Double[] number);

    void setTradeIn(String tradeInValue);
    
    void setCarPrice(String type);
    
}
