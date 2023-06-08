<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/StyleShowBill.css">
    <title>Document</title>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>List Order Of Bill</h1>
        </div>
        <div class="content">
            <c:forEach items="${listOrder}" var="order">
                <div class="content_card">
                    <div class="card name">${order.nameProduct}</div>
                    <div class="card quantity">x${order.quantity}</div>
                    <div class="card price">${order.price}$</div>
                    <div class="card total">${order.total}$</div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>