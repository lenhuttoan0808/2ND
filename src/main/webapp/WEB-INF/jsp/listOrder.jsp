<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 01/21/18
  Time: 9:56 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ping Shop</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Super Market Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <!-- //for-mobile-apps -->
    <link href="/resources/css/bootstrap1.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/resources/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- font-awesome icons -->
    <link href="/resources/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- js -->
    <script type="text/javascript" src="/resources/js/jquery-1.11.1.min.js"></script>
    <!-- //js -->
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="/resources/js/move-top.js"></script>
    <script type="text/javascript" src="/resources/js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
    <jsp:include page="header.jsp"></jsp:include>

    <!-- checkout -->
    <div class="checkout">
        <div class="container">
            <h2><span>Đơn Hàng Của bạn là:</span></h2>
            <div class="checkout-right">
                <table class="timetable_sub">
                    <thead>
                    <tr>
                        <th>Product Id</th>
                        <th>Product Images</th>
                        <th>Quality</th>
                        <th>Product Name</th>

                        <th>Price</th>
                        <th>Remove</th>
                    </tr>
                    </thead>

                    <c:forEach items="${orderDetails}" var="cart">
                        <tr class="rem1">
                            <td class="invert">${cart.product.name}</td>
                            <td class="invert-image"><a href="single.html"><img
                                    src="/resources/images/${cart.product.image}" alt=" " class="img-responsive"/></a>
                            </td>
                            <td class="invert">
                                <div class="quantity">
                                    <div class="quantity-select">
                                        <div class="entry value-minus">&nbsp;</div>
                                        <div class="entry value"><span>${cart.quantity}</span></div>
                                        <div class="entry value-plus active">&nbsp;</div>
                                    </div>
                                </div>
                            </td>
                            <td class="invert">${cart.product.name}</td>

                            <td class="invert">${cart.status}</td>

                            <td class="invert">
                                <div class="rem">
                                    <div class="close1"></div>
                                </div>
                                <script>$(document).ready(function (c) {
                                    $('.close1').on('click', function (c) {
                                        $('.rem1').fadeOut('slow', function (c) {
                                            $('.rem1').remove();
                                        });
                                    });
                                });
                                </script>
                            </td>
                        </tr>

                    </c:forEach>


                    <!--quantity-->
                    <script>
                        $('.value-plus').on('click', function () {
                            var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) + 1;
                            divUpd.text(newVal);
                        });

                        $('.value-minus').on('click', function () {
                            var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) - 1;
                            if (newVal >= 1) divUpd.text(newVal);
                        });
                    </script>
                    <!--quantity-->
                </table>
            </div>


        </div>
    </div>


    <jsp:include page="footer.jsp"></jsp:include>
    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/js/bootstrap.min.js"></script>

    <!-- top-header and slider -->
    <!-- here stars scrolling icon -->
    <script type="text/javascript">
        $(document).ready(function () {
            /*
                var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear'
                };
            */

            $().UItoTop({easingType: 'easeOutQuart'});

        });
    </script>
    <!-- //here ends scrolling icon -->
    <script src="/resources/js/minicart.min.js"></script>
    <script>
        // Mini Cart
        paypal.minicart.render({
            action: '#'
        });

        if (~window.location.search.indexOf('reset=true')) {
            paypal.minicart.reset();
        }
    </script>
    <!-- main slider-banner -->
    <script src="/resources/js/skdslider.min.js"></script>
    <link href="/resources/css/skdslider.css" rel="stylesheet">
    <script type="text/javascript">
        jQuery(document).ready(function () {
            jQuery('#demo1').skdslider({
                'delay': 5000,
                'animationSpeed': 2000,
                'showNextPrev': true,
                'showPlayButton': true,
                'autoSlide': true,
                'animationType': 'fading'
            });

            jQuery('#responsive').change(function () {
                $('#responsive_wrapper').width(jQuery(this).val());
            });

        });
    </script>
</head>
<body>

</body>
</html>
