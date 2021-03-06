<%--
  Created by IntelliJ IDEA.
  User: XHW
  Date: 2020/2/17
  Time: 22:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>用户添加</title>
    <meta name="description" content="AdminLTE">
    <meta name="keywords" content="AdminLTE">

    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
          name="viewport">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/morris/morris.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/select2/select2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <jsp:include page="../header.jsp"/>
    <!-- 页面头部 /-->
    <!-- 导航侧栏 -->
    <jsp:include page="../aside.jsp"/>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                用户 <small>用户表单</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/index.jsp"><i
                        class="fa fa-dashboard"></i> 首页</a></li>
                <li><a
                        href="${pageContext.request.contextPath}/user/findAll">用户</a></li>
                <li class="active">用户表单</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <form action="${pageContext.request.contextPath}/user/save"
              method="post">
            <!-- 正文区域 -->
            <section class="content"> <!--产品信息-->

                <div class="panel panel-default">
                    <div class="panel-heading">子表表单</div>
                    <div class="row data-type">

                        <%--1--%>
                        <div class="col-md-2 title">行号</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="hh"
                                   placeholder="行号" value="">
                        </div>
                        <div class="col-md-2 title">商品名称</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="spmc"
                                   placeholder="商品名称" value="">
                        </div>
                        <%--2--%>
                        <div class="col-md-2 title">商品编号</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="spbh"
                                   placeholder="商品编号" value="">
                        </div>
                        <div class="col-md-2 title">商品型号</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="type"
                                   placeholder="商品型号" value="">
                        </div>
                        <%--3--%>
                        <div class="col-md-2 title">计量单位</div>
                        <div class="col-md-2 data">
                            <input type="text" class="form-control" name="jldw"
                                   placeholder="计量单位" value="">
                        </div>
                            <div class="col-md-2 title"></div>
                        <div class="col-md-2 title">数量</div>
                        <div class="col-md-2 data">
                            <input type="text" class="form-control" name="count"
                                   placeholder="数量" value="">
                        </div>
                            <div class="col-md-2 title"></div>
                        <%--4--%>
                        <div class="col-md-2 title">税率(%)</div>
                        <div class="col-md-2 data">
                            <input type="text" class="form-control" name="rate"
                                   placeholder="税率" value="">
                        </div>
                            <div class="col-md-2 title"></div>
                        <div class="col-md-2 title">单品扣率</div>
                        <div class="col-md-2 data">
                            <input type="text" class="form-control" name="dpkl"
                                   placeholder="单品扣率" value="">
                        </div>
                            <div class="col-md-2 title"></div>
                        <%--5--%>
                        <div class="col-md-2 title">无税单价</div>
                        <div class="col-md-4 data">
                            <div class="input-group">
                                <span class="input-group-addon">¥</span>
                                <input type="text" class="form-control" name="wsdj">
                                <span class="input-group-addon">元</span>
                            </div>
                        </div>
                        <div class="col-md-2 title">含税单价</div>
                        <div class="col-md-4 data">
                            <div class="input-group">
                                <span class="input-group-addon">¥</span>
                                <input type="text" class="form-control" name="hsdj">
                                <span class="input-group-addon">元</span>
                            </div>
                        </div>
                        <%--6--%>
                        <div class="col-md-2 title">无税金额</div>
                        <div class="col-md-4 data">
                            <div class="input-group">
                                <span class="input-group-addon">¥</span>
                                <input type="text" class="form-control" name="wsje">
                                <span class="input-group-addon">元</span>
                            </div>
                        </div>
                        <div class="col-md-2 title">含税金额</div>
                        <div class="col-md-4 data">
                            <div class="input-group">
                                <span class="input-group-addon">¥</span>
                                <input type="text" class="form-control" name="hsje">
                                <span class="input-group-addon">元</span>
                            </div>
                        </div>
                        <%--7--%>
                        <div class="col-md-2 title">税额</div>
                        <div class="col-md-4 data">
                            <div class="input-group">
                                <span class="input-group-addon">¥</span>
                                <input type="text" class="form-control" name="se">
                                <span class="input-group-addon">元</span>
                            </div>
                        </div>
                        <div class="col-md-2 title">折扣额</div>
                        <div class="col-md-4 data">
                            <div class="input-group">
                                <span class="input-group-addon">¥</span>
                                <input type="text" class="form-control" name="zke">
                                <span class="input-group-addon">元</span>
                            </div>
                        </div>
                        <%--8--%>
                        <div class="col-md-2 title">收货单位</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="shdw"
                                   placeholder="收货单位" value="">
                        </div>

                        <%--<div class="col-md-2 title">商品名称</div>
                        <div class="col-md-4 data">
                            <input type="password" class="form-control" placeholder="密码" value="" name="password">
                        </div>
                        &lt;%&ndash;3&ndash;%&gt;
                        <div class="col-md-2 title">性别</div>
                        <div class="col-md-4 data">
                            <select class="form-control" name="sex">
                                <option value="1">男</option>
                                <option value="0">女</option>
                            </select>
                        </div>
                        &lt;%&ndash;4&ndash;%&gt;
                        <div class="col-md-2 title">电话</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" placeholder="电话" value="" name="phone">
                        </div>
                        &lt;%&ndash;5&ndash;%&gt;
                        <div class="col-md-2 title">邮箱</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" placeholder="邮箱" value="" name="email">
                        </div>
                        &lt;%&ndash;6&ndash;%&gt;
                        <div class="col-md-2 title">状态</div>
                        <div class="col-md-4 data">
                            <select class="form-control" name="status">
                                <option value="1">激活</option>
                                <option value="0">未激活</option>
                            </select>
                        </div>--%>


                    </div>
                </div>
                <!--订单信息/--> <!--工具栏-->
                <div class="box-tools text-center">
                    <button type="submit" class="btn bg-maroon">保存</button>
                    <button type="button" class="btn bg-default"
                            onclick="history.back(-1);">返回
                    </button>
                </div>
                <!--工具栏/--> </section>
            <!-- 正文区域 /-->
        </form>
    </div>
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <jsp:include page="../footer.jsp"/>
    <!-- 底部导航 /-->

</div>


<script
        src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>

<script>
    $(document).ready(function () {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });
    });

    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }

    $(document).ready(function () {
        $('#datepicker-a3').datetimepicker({
            format: "yyyy-mm-dd hh:ii",
            autoclose: true,
            todayBtn: true,
            language: "zh-CN"
        });
    });

    $(document).ready(function () {
        // 激活导航位置
        setSidebarActive("order-manage");
        $("#datepicker-a3").datetimepicker({
            format: "yyyy-mm-dd hh:ii",

        });

    });
</script>


</body>

</html>


