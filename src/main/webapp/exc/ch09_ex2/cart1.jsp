<!doctype html>
<html lang="en">
<head>
    <title>Table 03</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/style.css">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <meta charset="utf-8">
    <title>Exercise ch09_ex2</title>


</head>
<body>
<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center mb-5">
                <h2 class="heading-section" style="color: #1c7430">Your cart</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">

                <div class="table-wrap">
                    <table class="table">
                        <thead class="thead-primary">
                        <tr>
                            <th>Description</th>
                            <th>Price</th>
                            <th>Price</th>
                            <th>Amount</th>
                            <th></th>

                        </tr>
                        </thead>
                        <tbody>


                        <c:forEach var="item" items="${cart.items}">
                            <tr>
                                <td>
                                    <form action="" method="post">
                                        <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
                                        <input type=text name="quantity" value="<c:out value='${item.quantity}'/>" id="quantity">
                                        <input type="submit" value="Update">
                                    </form>
                                </td>
                                <td><c:out value='${item.product.description}'/></td>
                                <td>${item.product.priceCurrencyFormat}</td>
                                <td>${item.totalCurrencyFormat}</td>
                                <td>
                                    <form action="" method="post">
                                        <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
                                        <input type="hidden" name="quantity" value="0">
                                        <input type="submit" value="Remove Item">
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <div >

                <p><b>To change the quantity</b>, enter the new quantity
                    and click on the Update button.</p>

                <form action="" method="post">
                    <input type="hidden" name="action" value="shop">
                    <input type="submit" class="btn btn-primary" value="Continue Shopping">
                </form>

                <form action="" method="post">
                    <input type="hidden" name="action" value="checkout">
                    <input  type="submit" class="btn btn-primary" style="margin-top: 20px" value="Checkout">
                </form></div>

        </div>
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>

</section>


</body>
</html>

