<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="assets/css/styleHistory.css">
    <title>HistoryBill</title>
</head>
<body>
    <div class="container rounded mt-5 bg-white p-md-5">
        <div class="h2 font-weight-bold">Purchase history</div>
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Code Bill</th>
                        <th scope="col">Date Bill</th>
                        <th scope="col">Total</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listBill}" var="bill">
                        <tr class="bg-blue">
                            <td class="pt-2"> 
                                <div class="pl-lg-5 pl-md-3 pl-1 name"><a href="showBill?codebill=${bill[0]}">${bill[0]}</a></div>
                            </td>
                            <td class="pt-3 mt-1">${bill[1]}</td>
                            <td class="pt-3">${bill[2]} $</td>
                        </tr>
                        <tr id="spacing-row">
                            <td></td>
                        </tr>
                    </c:forEach>

                    <tr class="bg-blue">
                        <td class="pt-2" >
                            <div class="pl-lg-5 pl-md-3 pl-1 name" >
                                <a style="text-decoration: none; color: green; " href="CartServlet">Back To Cart</a>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>