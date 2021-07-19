<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="header">
                        <h4 class="title">Thêm Nhà Cung Ứng Sản Phẩm</h4>
                    </div>
                    <div class="content">
                        <form:form action="/admin/addsuppliers" method="post" modelAttribute="supplier"
                                   enctype="multipart/form-data">

                            <div class="row">
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>SĐT</label>
                                        <form:input path="phone" class="form-control" required="true" pattern="^((09|03|07|08|05)+([0-9]{8})\b)$" title="Số điện thoại của bạn phải bao gồm 10 số và bắt đầu bằng các đầu số, 09, 08, 07, 05, 03"></form:input>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Email</label>
                                        <form:input path="email" class="form-control" pattern="^[a-z0-9](\.?[a-z0-9]){5,}@g(oogle)?mail\.com$" title="Hãy nhập gmail theo định dạng Example@gmail.com" required="true"></form:input>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Logo</label>
                                        <input accept="image/*" name="file" type="file" id="files" class="form-control" required="true">
                                        <img id="image" width="200" height="100"/>
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>
                                           Name</label>
                                        <form:input path="name" class="form-control" required="true"></form:input>
                                    </div>
                                </div>
                                <%--<div class="col-md-6">--%>
                                    <%--<div class="form-group">--%>
                                        <%--<label>Số Điện Thoại</label>--%>
                                        <%--<form:input path="phone" class="form-control"></form:input>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            </div>


                            <button type="submit" class="btn btn-info btn-fill pull-right">Add Supplier</button>
                            <div class="clearfix"></div>

                        </form:form>

                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card card-user">
                    <div class="image">
                        <img src="https://scontent-sin6-1.xx.fbcdn.net/v/t1.6435-9/131132806_2308029716030376_5673469639334529302_n.jpg?_nc_cat=107&ccb=1-3&_nc_sid=e3f864&_nc_ohc=9wPualGGpZoAX-O3jqz&_nc_ht=scontent-sin6-1.xx&oh=277c6225de2b9bf2e1c2d26d371b4065&oe=60F28DF8"
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

</html>
