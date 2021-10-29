<!DOCTYPE html>
<html>
<head>
    <%@ include file="header_ch09_ex2.jsp" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>

<h1>Your cart</h1>

<table>
    <tr>
        <th>Description</th>
        <th>Price</th>
        <th>Price</th>
        <th>Amount</th>
        <th></th>
    </tr>

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
</table>

<p><b>To change the quantity</b>, enter the new quantity
    and click on the Update button.</p>

<form action="" method="post">
    <input type="hidden" name="action" value="shop">
    <input type="submit" value="Continue Shopping">
</form>

<form action="" method="post">
    <input type="hidden" name="action" value="checkout">
    <input type="submit" value="Checkout">
</form>

</body>
</html>