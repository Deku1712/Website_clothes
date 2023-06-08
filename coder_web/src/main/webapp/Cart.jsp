<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="cssWeb/StyleCart.css">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<style>
        .choicebox {
    display: block;
    position: relative;
    padding-left: 35px;
    margin-bottom: 21px;
    margin-left: 15px;
    cursor: pointer;
    font-size: 22px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    }

    /* Hide the browser's default checkbox */
    .choicebox input {
    position: absolute;
    opacity: 0;
    cursor: pointer;
    height: 0;
    width: 0;
    }

    /* Create a custom checkbox */
    .checkmark {
    position: absolute;
    top: 0;
    left: 0;
    height: 25px;
    width: 25px;
    background-color: #eee;
    }

    /* On mouse-over, add a grey background color */
    .choicebox:hover input ~ .checkmark {
    background-color: #ccc;
    }

    /* When the checkbox is checked, add a blue background */
    .choicebox input:checked ~ .checkmark {
    background-color: #2196F3;
    }

    /* Create the checkmark/indicator (hidden when not checked) */
    .checkmark:after {
    content: "";
    position: absolute;
    display: none;
    }

    /* Show the checkmark when checked */
    .choicebox input:checked ~ .checkmark:after {
    display: block;
    }

    /* Style the checkmark/indicator */
    .choicebox .checkmark:after {
    left: 9px;
    top: 5px;
    width: 5px;
    height: 10px;
    border: solid white;
    border-width: 0 3px 3px 0;
    -webkit-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    transform: rotate(45deg);
    }
</style>

<body>
    <section class="h-100 h-custom" style="background-color: #eee;">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col">
                    <div class="card">
                        <div class="card-body p-4">
                            <form action="BuyServlet" method="post">

                            
                                <div class="row">

                                    <div class="col-lg-12">
                                        <h5 class="mb-3"><a href="shop" class="text-body"><i
                                                    class="fas fa-long-arrow-alt-left me-2"></i>Continue shopping</a></h5>
                                        <hr>

                                        <div class="d-flex justify-content-between align-items-center mb-4">
                                            <div>
                                                <p class="mb-1">Shopping cart</p>
                                                <p class="mb-0">You have ${quantity} items in your cart</p>
                                            </div>
                                        </div>

                                        
                                        <c:forEach var="product" items="${sessionScope.ListProduct_cart}">

                                            <div class="card mb-3">
                                                <div class="card-body" id="myDiv">
                                                    
                                                    <div class="d-flex justify-content-between">
                                                        <div class="d-flex flex-row align-items-center">
                                                            <div>
                                                                <img src="${product.url}"
                                                                    class="img-fluid rounded-3" alt="Shopping item"
                                                                    style="width: 65px;">
                                                            </div>
                                                            <div class="ms-3">
                                                                <h5>${product.name} </h5>
                                                                <p class="small mb-0">${product.size}, ${product.price}$</p>
                                                            </div>
                                                        </div>
                                                        <div class="d-flex flex-row align-items-center">
                                                            <div style="width: 50px;">
                                                                <h5 class="fw-normal mb-0">x ${product.quantity} </h5>
                                                            </div>
                                                            <div style="width: 80px;">
                                                                <h5 class="mb-0">$ ${product.total} </h5>
                                                            </div>
                                                            <a href="Trash?id=${product.id}&phone=${product.phone}&size=${product.size}" style="color: #cecece;"><i
                                                                    class="fas fa-trash-alt"></i></a>
                                                            <!-- <input class="choicebox" id="choice" type="checkbox" id="check" name="row" ${sessionScope.size == product.size && sessionScope.id == product.id && sessionScope.phoness == product.phone ? "checked" : " " } > -->
                                                            <div id="productdata" data-id="${product.id}" data-size="${product.size}" data-total="${product.total}">
                                                                <label class="choicebox" >
                                                                    <input id="check" name="myCheckbox" type="checkbox" ${size == product.size && sessionScope.id == product.id && sessionScope.phoness == product.phone ? "checked" : " " } value="${product.id}//${product.name}//${product.size}//${product.quantity}//${product.price}//{product.total}">
                                                                    <span class="checkmark"></a></span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>

                                        <div class="d-flex flex-row align-items-center justify-content-end">
                                            <div class="d-flex flex-row" style="width: 70px">
                                                <h5 class="mb-0" id="total"></h5>
                                                <h5 class="mb-0">$</h5>
                                            </div>
                                            
                                            <div>
                                                <button class="btn btn-primary" type="submit" style="background: #59ab6e;">BUY</button>
                                            </div>


                                            

                                        
                                        </div>


                                    </div>


                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="assets/js/Buy.js"></script>
</body>

</html>