<%-- 
    Document   : receipt
    Created on : Nov 23, 2019, 3:22:48 PM
    Author     : dann
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.cardealer2.*"%>
<%
    CustomerBean customer = new CustomerBean();
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String number = request.getParameter("number");
    String address = request.getParameter("address");
    String tradein = request.getParameter("tradein");
    String cartype = request.getParameter("cartype");
    customer.setName(name);
    customer.setAddress(address);
    customer.setEmail(email);
    customer.setNumber(number);
    CarBean car = new CarBean();
    car.setType(cartype);
    OrderBean order = new OrderBean();
    order.setTradeIn(tradein);
    order.setCarPrice(cartype);
    Double[] options = new Double[5];
    String[] optionValues = new String[5];
    if(request.getParameter("option1")!=null){
        options[0]=45000.0;
        optionValues[0]="Screen Dashboard";
    }
    else{
        options[0]=0.0;
        optionValues[0] ="";
    }
    if(request.getParameter("option2")!=null){
        options[1]=46770.0;
        optionValues[1]="Custom Exhaust";
    }
    else{
        options[1]=0.0;
        optionValues[1] ="";
    }
    if(request.getParameter("option3")!=null){
        options[2]=35000.0;
        optionValues[2]="GPS";
    }
    else{
        options[2]=0.0;
        optionValues[2] ="";
    }
    if(request.getParameter("option4")!=null){
        options[3]=75000.0;
        optionValues[3]="Custom Exhaust";
    }
    else{
        options[3]=0.0;
        optionValues[3] ="";
    }
    if(request.getParameter("option5")!=null){
        options[4]=5000.0;
        optionValues[4]="Interior Leather";
    }
    else{
        options[4]=0.0;
        optionValues[4] ="";
    }
    order.setOptions(options);
    order.setOptionValues(optionValues);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="styles/css/receipt.css">
        <title>Receipt</title>
    </head>
    <body>
        <div class="container">
            <div id="invoice-POS">
                <center id="top">
                    <div class="logo"></div>
                    <div class="info"> 
                        <h2>Bazaar Motors</h2>
                    </div><!--End Info-->
                </center><!--End InvoiceTop-->
    
                <div id="mid">
                    <div class="info">
                        <h2>Customer Info</h2>
                        <p> 
                            Name : <%=customer.getName()%></br>
                            Address : <%=customer.getAddress()%></br>
                            Email   : <%=customer.getEmail()%></br>
                            Phone   : <%=customer.getNumber()%></br>
                        </p>
                    </div>
                </div><!--End Invoice Mid-->
    
                <div id="bot">
                    <div id="table">
                        <table>
                            <tr class="tabletitle">
                                <td class="item"><h2>Car Type</h2></td>
                                <td class="Hours"><h2>Qty</h2></td>
                                <td class="Rate"><h2>Car price</h2></td>
                            </tr>

                            <tr class="service">
                                <td class="tableitem"><p class="itemtext"><%=car.getCarType()%></p></td>
                                <td class="tableitem"><p class="itemtext">1 </p></td>
                                <td class="tableitem"><p class="itemtext"><%=car.getPrice()%></p></td>
                            </tr>
                        </table>
                    </div><!--End Table-->
                    <div id="mid">
                    <div class="info">
                        <h2>Customer Info</h2>
                        <p> 
                            Subtotal : <%=String.format("%.2f",order.getSubTotal())%>
                        </p>
                        <p> 
                            Tax : <%=String.format("%.2f",order.getTax())%>
                        </p>
                        <p> 
                            Trade In : <%=order.getTradeIn()%>
                        </p>
                        <p> 
                            Total : <%=order.getTotal()%>
                        </p>
                    </div>
                </div>
                    <div id="legalcopy">
                        <p class="legal"><strong>Thank you for your buying from us</strong>
                        </p>
                    </div>
                </div><!--End InvoiceBot-->
            </div><!--End Invoice-->
        </div>
    </body>
</html>
