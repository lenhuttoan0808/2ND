<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>2nd Shop</title>
</head>
<body>
<!-- new -->
<div class="newproducts-w3agile">
    <div class="container">
        <h3>MAYBE YOU WILL LIKE</h3>
        <div class="agile_top_brands_grids">
            <c:forEach items="${listproductrad}" var="r">
                <div class="col-md-4 top_brand_left">
                    <div class="hover14 column">
                        <div class="agile_top_brand_left_grid">
                            <div class="agile_top_brand_left_grid_pos">
                                <img  src="/resources/images/offer.png" width="30" height="30" alt=" "
                                      class="img-responsive"/>
                            </div>
                            <div class="agile_top_brand_left_grid1">
                                <figure>
                                    <div class="snipcart-item block">

                                        <div class="snipcart-thumb">
                                            <a href="/detail?id=${r.id}"><img title=" " alt=" "
                                                                              src="/resources/images/${r.image}" width="300" height="400"/></a>

                                            <p><a href="/detail?id=${u.id}"> ${r.name}</a></p>
                                            <h4>${u.unitPrice} $</h4>
                                        </div>
                                        <div class="snipcart-details top_brand_home_details">
                                            <a href="/addToCart?id=${r.id}">
                                                <img src="/resources/images/cart.svg" width="50"
                                                     height="50" alt=" " class="img-responsive"/></a>
                                        </div>
                                    </div>
                                </figure>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>



            <div class="clearfix"></div>
        </div>
    </div>
</div>
</body>
</html>
