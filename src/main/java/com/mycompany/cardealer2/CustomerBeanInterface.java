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
public interface CustomerBeanInterface {

    String getAddress();

    String getEmail();

    String getName();

    String getNumber();

    /**
     *
     * @param address
     */
    void setAddress(String address);

    void setEmail(String email);

    void setName(String name);

    void setNumber(String number);
    
}
