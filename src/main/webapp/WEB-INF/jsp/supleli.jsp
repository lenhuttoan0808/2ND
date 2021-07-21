<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="brands">
    <div class="container">
        <h3><spring:message code="topSupplier" text="default text"/></h3>

        <div class="brands-agile">    <c:forEach items="${supplierList}" var="su">
            <div class="col-md-2 w3layouts-brand">

                <div class="brands-w3l">
                    <p><a href="productbysupplier?supplierId=${su.id}"><img src="/resources/uploads/${su.logo}" class="img-responsive" alt="#" /></a></p>
                </div>

            </div>
        </c:forEach>

            <div class="clearfix"></div>
        </div>

        </div>

    </div>
</div>
<!--//brands-->
</body>
</html>
