
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="header">
                        <h4 class="title">Sửa Danh Mục Sản Phẩm</h4>
                    </div>

                    <form:form action="/admin/editCategory"  modelAttribute="category1" method="post">
                        <div class="row">
                            <form:input path="id" class="form-control" readonly="true" type="hidden"></form:input>
                        </div>
                    <div class="content">

                        <div class="row">

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Nhà Cung Cấp</label>
                                    <form:select items="${supplierList}" itemLabel="name"
                                                 itemValue="id" path="supplier.id" class="form-control">

                                    </form:select>

                                </div>
                            </div>

                            <div class="col-md-5">
                                <div class="form-group">
                                    <label>Category Name</label>
                                    <form:input path="name" class="form-control" required="true"></form:input>
                                    <form:errors path="name"/>

                                </div>
                            </div>
                        </div>


                            <button type="submit" class="btn btn-info btn-fill pull-right">Update Category</button>
                            <div class="clearfix"></div>

                    </div>
                    </form:form>


                </div>

            </div>
        </div>
        <div class="col-md-4">
            <div class="card card-user">
                <div class="image">
                    <img src="/resources/images/cover_admin.jpg"
                         alt="..." height="300" width="300"/>
                </div>
                <div class="content">
                    <div class="author">
                        <a href="#">
                            <img class="avatar border-gray" src="/resources/assets/img/faces/admin.jpg"
                                 alt="..."/>

                            <h4 class="title">Ở ĐÂY CÓ 2HAND<br/>
                                <small>@PLESBUY.2ND</small>
                            </h4>
                        </a>
                    </div>
                    <p class="description text-center"> "Hi Shopkeeper <br>
                        What does a hero truly need? <br>
                        Strength ? Agility ? Intelligence ?
                    </p>
                </div>
                <hr>
                <div class="text-center">
                    <button href="https://www.facebook.com/PLESBUY.2ND/" class="btn btn-simple"><i class="fa fa-facebook-square"></i></button>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>


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

<script>
    document.getElementById('files').onchange = function () {
        var src = URL.createObjectURL(this.files[0])
        document.getElementById('image').src = src
    }
</script>

<script type="text/javascript">
    $(document).ready(function () {

        demo.initChartist();

        $.notify({
            icon: 'pe-7s-gift',
            message: "Chào Mừng Bạn <b>Đến Với Trang Thống Kê</b> Chúc cửa hàng bạn luôn thành công."

        }, {
            type: 'info',
            timer: 4000
        });

    });
</script>
</body>
</html>
