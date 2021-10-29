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
                <h2 class="heading-section">Your cart</h2>
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
                            <th></th>

                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="product" items="${products}">
                        <tr>

                            <td><c:out value='${product.description}'/></td>
                            <td class="right">${product.priceCurrencyFormat}</td>

                            <td>

                                <form action="cart" method="post">
                                    <input type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
                                    <input type="submit" class="btn btn-primary" value="Add To Cart">
                                </form>
                            </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<script src="js/jquery.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>

</body>
</html>

