<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="select" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="utf-8"/>
    <link rel="icon" type="image/png" href="/resources/assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>Light Bootstrap Dashboard by Creative Tim</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>


    <!-- Bootstrap core CSS     -->
    <link href="/resources/assets/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Animation library for notifications   -->
    <link href="/resources/assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="/resources/assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="/resources/assets/css/demo.css" rel="stylesheet"/>


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="/resources/assets/css/pe-icon-7-stroke.css" rel="stylesheet"/>
    <script src=/resources/assets/js/jquery.validate.min.js"></script>


</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="header">
                        <h4 class="title">Add Product</h4>
                    </div>
                    <div class="content">
                        ${message}
                        <form:form action="/admin/editorder" method="post" modelAttribute="orderDetails">
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>M?? h??ng h??a</label>
                                        <form:input path="id" class="form-control" name="id"></form:input>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Discount

                                        </label>
                                        <form:input path="discount" class="form-control" required="true"></form:input>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>S??? l?????ng</label>
                                        <form:input path="quantity" class="form-control"></form:input>
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>
                                            T???ng ti???n</label>
                                        <form:input type="text"  path="totalPrice" class="form-control"></form:input>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>????n gi??</label>
                                        <form:input type="text"  path="unitPrice" class="form-control"></form:input>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>
                                            M?? Oder </label>
                                        <form:input type="text" path="order.id" class="form-control" required="true"></form:input>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Product</label>
                                        <form:input type="text" path="product.id" class="form-control" required="true"></form:input>


                                    </div>
                                </div>
                                <div class="col-md-4">

                                    <div class="form-group">
                                        <label>Lo???i</label>
                                        <form:select
                                                     itemValue="status" path="status" class="form-control">
                                            <form:option value="Thanh To??n">Thanh To??n</form:option>
                                            <form:option value="Thanh To??n">??ang Giao D???ch</form:option>

                                        </form:select>




                                    </div>

                                </div>

                            </div>


                            <button type="submit" class="btn btn-info btn-fill pull-right">Update Profile</button>
                            <div class="clearfix"></div>
                        </form:form>
                    </div>
                </div>
            </div>


        </div>
    </div>
</div>


<jsp:include page="footer.jsp"></jsp:include>

</div>
</div>


</body>

<!--   Core JS Files   -->
<script src="/resources/assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="/resources/assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Charts Plugin -->
<script src="/resources/assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="/resources/assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="/resources/assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="/resources/assets/js/demo.js"></script>

<script type="text/javascript">
    $(document).ready(function () {

        demo.initChartist();

        $.notify({
            icon: 'pe-7s-gift',
            message: "Ch??o M???ng B???n <b>?????n V???i Trang Th???ng K??</b> Ch??c c???a h??ng b???n lu??n th??nh c??ng."

        }, {
            type: 'info',
            timer: 4000
        });

    });
</script>

</html>
