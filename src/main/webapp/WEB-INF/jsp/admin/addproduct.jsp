<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="select" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="utf-8"/>
    <link rel="icon" type="image/png" href="/resources/assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title></title>

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
                        <h4 class="title">Thêm Sản Phẩm</h4>
                    </div>
                    <div class="content">
                        ${message}
                        <form:form action="/admin/addproduct" method="post" modelAttribute="product"
                                   enctype="multipart/form-data" id="productadmin">
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>Tên Hàng</label>
                                        <form:input path="name" class="form-control"></form:input>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Giá

                                        </label>
                                        <form:input path="unitPrice" class="form-control" required="true"></form:input>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Đơn vị tính</label>
                                        <form:select path="unitBrief" class="form-control">
                                            <option value="USD">USD</option>
                                        </form:select>
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>
                                            Giảm giá</label>
                                        <form:input type="number" path="discount" class="form-control"
                                                    min="0"></form:input>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Số lượng</label>
                                        <form:input type="number" path="quantity" class="form-control"
                                                    min="0"></form:input>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>
                                            Ngày nhập </label>
                                        <form:input type="date" path="productDate" class="form-control"
                                                    required="true"></form:input>
                                    </div>
                                </div>
                            </div>

                            <div class="row">

                                <div class="col-md-4">
                                    <div class="form-group">

<!--
                                        <script type="text/javascript">
                                            $(document).ready(function(){

                                                $('#comboboxSupplier').on('change', function(){
                                                    var supplierId = $(this).val();
                                                    $.ajax({
                                                        type: 'GET',
                                                        url: '${pageContext.request.contextPath }loadCategotyBySupplier/' + supplierId,
                                                        success: function(result) {
                                                            var result = JSON.parse(result);
                                                            var s = '';
                                                            for(var i = 0; i < result.length; i++) {
                                                                s += '<option value="' + result[i].id + '">' + result[i].name + '</option>';
                                                            }
                                                            $('#comboboxCategory').html(s);
                                                        }
                                                    });
                                                });
                                            });
                                        </script>
-->

                                        <label>Nhà Cung Cấp</label>
                                        <form:select items="${supplierList}" itemLabel="name"
                                                     itemValue="id" path="supplier.id" class="form-control" onchange="">

                                        </form:select>

                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Loại</label>
                                        <form:select items="${categoryList}" itemLabel="name"
                                                     itemValue="id" path="category.id" class="form-control">
                                        </form:select>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Hình Ảnh</label>
                                        <input accept="image/*" name="file" type="file" id="files" class="form-control" required="true">
                                        <img id="image" width="200" height="300"/>
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Mô Tả</label>
                                        <form:input path="description" class="form-control"></form:input>
                                    </div>
                                </div>
                            </div>
                            <%--<div class="row">--%>
                            <%--<div class="col-md-12">--%>
                            <%--<div class="form-group">--%>
                            <%--<label>giá</label>--%>
                            <%--<form:input path="unitPrice" class="form-control" required="true"></form:input>--%>
                            <%--</div>--%>
                            <%--</div>--%>
                            <%--</div>--%>

                            <button type="submit" class="btn btn-info btn-fill pull-right">Add Product</button>
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
            message: "<b>GIT GUT</b>"

        }, {
            type: 'info',
            timer: 4000
        });

    });
</script>

</html>
