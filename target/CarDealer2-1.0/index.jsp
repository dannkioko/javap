<%-- 
    Document   : mainform
    Created on : Nov 23, 2019, 11:52:20 AM
    Author     : dann
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/css/bootstrap.min.css">
        <link rel="stylesheet" href="styles/style.css">
        <script src="styles/js/bootstrap.min.js"></script>
        <title>Car Dealer</title>
    </head>
    <body>
        <div class="container">
            <form method="POST" action="receipt.jsp">
                <div class="row" >
                    <div class="col-lg-8" style="align-content: center">
                        <div class="card">
                            <div class="card-body" >
                                <h1 class="card-title">Bazaar Motors</h1>
                                <p class="card-text"> One Stop Shop for all your Car needs</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h2 class="card-title">Select Car</h2>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <span>Choose car</span>
                                                <div>
                                                    <select name="cartype">
                                                        <option value="Toyota Supra">Toyota Supra</option>
                                                        <option value="Nissan Navara">Nissan Navara</option>
                                                        <option value="BMW X6">BMW X6</option>
                                                        <option value="Tesla Model 3">Tesla Model 3</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <span>Trade In</span>
                                                <div>
                                                    <select name="tradein">
                                                        <option value="5000">0-5000</option>
                                                        <option value="10000">5001-10000</option>
                                                        <option value="15000">10001-15000</option>
                                                        <option value="20000">15001-20000</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="row">
                                    <div class="card">
                                        <div class="card-body">
                                            <h3 class="card-title">Accessories</h3>
                                            <div><input type="checkbox" name="option1">Screen Dashboard</input></div>
                                            <div><input type="checkbox" name="option2">Custom rims</input></div>
                                            <div><input type="checkbox" name="option3">GPS</input></div>
                                            <div><input type="checkbox" name="option4">Custom Exhaust</input></div>
                                            <div><input type="checkbox" name="option5">Interior Leather</input></div>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                        </div>    
                        <div class="row">
                            <div class="card">
                                <div class="card-body">
                                    <h3 class="card-title">Include Tax</h3>
                                    <div><input type="checkbox" name="tax">Tax</input></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">Customer Details</h5>
                                    <span><label>Name</label><input type="text" name="name"></input></span>
                                    <span><label>Address</label><input type="text" name="address"></input></span>
                                    <span><label>Email</label><input type="email" name="email"></input></span>
                                    <span><label>Phone Number</label><input type="text" name="number"></input></span>
                            </div>
                            
                        </div>
                        <div class="row">
                                <div><input type="submit" class="btn btn-primary"></div>
                            </div>
                    </div>
                </div>
                
            </form>
        </div>
    </body>
</html>
