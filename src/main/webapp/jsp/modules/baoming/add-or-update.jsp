<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑报名</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">报名管理</li>
                        <li class="breadcrumb-item active">编辑报名</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">报名信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6">
                                        <label>创业项目</label>
                                        <div>
                                            <select id="chuangyexiangmuSelect" name="chuangyexiangmuSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>项目标题</label>
                                        <input id="chuangyexiangmuName" name="chuangyexiangmuName" class="form-control"
                                               placeholder="项目标题" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>发布教师</label>
                                        <input id="jiaoshiId" name="jiaoshiId" class="form-control"
                                               placeholder="发布教师" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>样本图片</label>
                                        <img id="chuangyexiangmuPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>项目分类名称</label>
                                        <input id="leixValue" name="leixValue" class="form-control"
                                               placeholder="项目分类名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>教师</label>
                                        <div>
                                            <select id="jiaoshiSelect" name="jiaoshiSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>账户</label>
                                        <input id="username" name="username" class="form-control"
                                               placeholder="账户" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>姓名</label>
                                        <input id="jiaoshiName" name="jiaoshiName" class="form-control"
                                               placeholder="姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>性别</label>
                                        <input id="sexValue" name="sexValue" class="form-control"
                                               placeholder="性别" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>身份证号</label>
                                        <input id="jiaoshiIdNumber" name="jiaoshiIdNumber" class="form-control"
                                               placeholder="身份证号" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>手机号</label>
                                        <input id="jiaoshiPhone" name="jiaoshiPhone" class="form-control"
                                               placeholder="手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>照片</label>
                                        <img id="jiaoshiPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>学生</label>
                                        <div>
                                            <select id="yonghuSelect" name="yonghuSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>账户</label>
                                        <input id="username" name="username" class="form-control"
                                               placeholder="账户" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>姓名</label>
                                        <input id="yonghuName" name="yonghuName" class="form-control"
                                               placeholder="姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>性别</label>
                                        <input id="sexValue" name="sexValue" class="form-control"
                                               placeholder="性别" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>身份证号</label>
                                        <input id="yonghuIdNumber" name="yonghuIdNumber" class="form-control"
                                               placeholder="身份证号" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>手机号</label>
                                        <input id="yonghuPhone" name="yonghuPhone" class="form-control"
                                               placeholder="手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>照片</label>
                                        <img id="yonghuPhotoImg" src="" width="100" height="100">
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                    <div class="form-group col-md-6">
                                        <label>竞赛编号</label>
                                        <input id="bianhao" name="bianhao" class="form-control"
                                               placeholder="竞赛编号">
                                    </div>
                                <input id="chuangyexiangmuId" name="chuangyexiangmuId" type="hidden">
                                <input id="yonghuId" name="yonghuId" type="hidden">
                                <div class="form-group col-md-6">
                                    <label>电话</label>
                                    <input id="baomingPhone" name="baomingPhone" class="form-control"
                                           onchange="baomingPhoneChickValue(this)"  placeholder="电话">
                                </div>
                                <input id="jiaoshiId" name="jiaoshiId" type="hidden">
                                   <div class="form-group col-md-6">
                                       <label>审核结果</label>
                                       <select id="baomingTypesSelect" name="baomingTypes" class="form-control">
                                       </select>
                                   </div>
                                <div class="form-group col-md-6">
                                    <label>评分</label>
                                    <input id="baomingPingfen" name="baomingPingfen" class="form-control"
                                           onchange="baomingPingfenChickValue(this)"  placeholder="评分">
                                </div>

                                <div class="form-group col-md-12 mb-3">
                                    <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                    <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
</script><script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "baoming";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var baomingTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var chuangyexiangmuOptions = [];
    var jiaoshiOptions = [];
    var yonghuOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
           if($("#chuangyexiangmuId") !=null){
               var chuangyexiangmuId = $("#chuangyexiangmuId").val();
               if(chuangyexiangmuId == null || chuangyexiangmuId =='' || chuangyexiangmuId == 'null'){
                   alert("竞赛名称不能为空");
                   return;
               }
           }
           if($("#yonghuId") !=null){
               var yonghuId = $("#yonghuId").val();
               if(yonghuId == null || yonghuId =='' || yonghuId == 'null'){
                   alert("申请学生不能为空");
                   return;
               }
           }
           if($("#jiaoshiId") !=null){
               var jiaoshiId = $("#jiaoshiId").val();
               if(jiaoshiId == null || jiaoshiId =='' || jiaoshiId == 'null'){
                   alert("教师不能为空");
                   return;
               }
           }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';
            }
            httpJson("baoming/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addbaoming');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function baomingTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=baoming_types", "GET", {}, (res) => {
                if(res.code == 0){
                    baomingTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function chuangyexiangmuSelect() {
            //填充下拉框选项
            http("chuangyexiangmu/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    chuangyexiangmuOptions = res.data.list;
                }
            });
        }

        function chuangyexiangmuSelectOne(id) {
            http("chuangyexiangmu/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                chuangyexiangmuShowImg();
                chuangyexiangmuDataBind();
            }
        });
        }
        function jiaoshiSelect() {
            //填充下拉框选项
            http("jiaoshi/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    jiaoshiOptions = res.data.list;
                }
            });
        }

        function jiaoshiSelectOne(id) {
            http("jiaoshi/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                jiaoshiShowImg();
                jiaoshiDataBind();
            }
        });
        }
        function yonghuSelect() {
            //填充下拉框选项
            http("yonghu/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    yonghuOptions = res.data.list;
                }
            });
        }

        function yonghuSelectOne(id) {
            http("yonghu/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                yonghuShowImg();
                yonghuDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationBaomingtypesSelect(){
            var baomingTypesSelect = document.getElementById('baomingTypesSelect');
            if(baomingTypesSelect != null && baomingTypesOptions != null  && baomingTypesOptions.length > 0 ){
                for (var i = 0; i < baomingTypesOptions.length; i++) {
                    baomingTypesSelect.add(new Option(baomingTypesOptions[i].indexName,baomingTypesOptions[i].codeIndex));
                }
            }
        }

    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->
    <!-- 初始化级联表的下拉框(要根据内容修改) -->
        function initializationchuangyexiangmuSelect() {
            var chuangyexiangmuSelect = document.getElementById('chuangyexiangmuSelect');
            if(chuangyexiangmuSelect != null && chuangyexiangmuOptions != null  && chuangyexiangmuOptions.length > 0 ) {
                for (var i = 0; i < chuangyexiangmuOptions.length; i++) {
                        chuangyexiangmuSelect.add(new Option(chuangyexiangmuOptions[i].name, chuangyexiangmuOptions[i].id));
                }

                $("#chuangyexiangmuSelect").change(function(e) {
                        chuangyexiangmuSelectOne(e.target.value);
                });
            }

        }

        function initializationjiaoshiSelect() {
            var jiaoshiSelect = document.getElementById('jiaoshiSelect');
            if(jiaoshiSelect != null && jiaoshiOptions != null  && jiaoshiOptions.length > 0 ) {
                for (var i = 0; i < jiaoshiOptions.length; i++) {
                        jiaoshiSelect.add(new Option(jiaoshiOptions[i].name, jiaoshiOptions[i].id));
                }

                $("#jiaoshiSelect").change(function(e) {
                        jiaoshiSelectOne(e.target.value);
                });
            }

        }

        function initializationyonghuSelect() {
            var yonghuSelect = document.getElementById('yonghuSelect');
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                        yonghuSelect.add(new Option(yonghuOptions[i].name, yonghuOptions[i].id));
                }

                $("#yonghuSelect").change(function(e) {
                        yonghuSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var baomingTypesSelect = document.getElementById("baomingTypesSelect");
        if(baomingTypesSelect != null && baomingTypesOptions != null  && baomingTypesOptions.length > 0 ) {
            for (var i = 0; i < baomingTypesOptions.length; i++) {
                if (baomingTypesOptions[i].codeIndex == ruleForm.baomingTypes) {//下拉框value对比,如果一致就赋值汉字
                        baomingTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var chuangyexiangmuSelect = document.getElementById("chuangyexiangmuSelect");
            if(chuangyexiangmuSelect != null && chuangyexiangmuOptions != null  && chuangyexiangmuOptions.length > 0 ) {
                for (var i = 0; i < chuangyexiangmuOptions.length; i++) {
                    if (chuangyexiangmuOptions[i].id == ruleForm.chuangyexiangmuId) {//下拉框value对比,如果一致就赋值汉字
                        chuangyexiangmuSelect.options[i+1].selected = true;
                        $("#chuangyexiangmuSelect" ).selectpicker('refresh');
                    }
                }
            }
            var jiaoshiSelect = document.getElementById("jiaoshiSelect");
            if(jiaoshiSelect != null && jiaoshiOptions != null  && jiaoshiOptions.length > 0 ) {
                for (var i = 0; i < jiaoshiOptions.length; i++) {
                    if (jiaoshiOptions[i].id == ruleForm.jiaoshiId) {//下拉框value对比,如果一致就赋值汉字
                        jiaoshiSelect.options[i+1].selected = true;
                        $("#jiaoshiSelect" ).selectpicker('refresh');
                    }
                }
            }
            var yonghuSelect = document.getElementById("yonghuSelect");
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                    if (yonghuOptions[i].id == ruleForm.yonghuId) {//下拉框value对比,如果一致就赋值汉字
                        yonghuSelect.options[i+1].selected = true;
                        $("#yonghuSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
    }
    //数字检查
        <!-- 当前表的数字检查 -->
        function baomingPhoneChickValue(e){
            var this_val = e.value || 0;
            var reg=/^\d{11}$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("手机号不正确");
                return false;
            }
        }
        function baomingPingfenChickValue(e){
            var this_val = e.value || 0;
            /*if(this_val == 0){
                e.value = "";
                alert("0不允许输入");
                return false;
            }*/
            var reg=/^[1-9][0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addbaoming');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                bianhao: "required",
                chuangyexiangmuId: "required",
                yonghuId: "required",
                baomingPhone: "required",
                insertTime: "required",
                jiaoshiId: "required",
                baomingTypes: "required",
                baomingPingfen: "required",
            },
            messages: {
                bianhao: "竞赛编号不能为空",
                chuangyexiangmuId: "竞赛名称不能为空",
                yonghuId: "申请学生不能为空",
                baomingPhone: "电话不能为空",
                insertTime: "申请时间不能为空",
                jiaoshiId: "教师不能为空",
                baomingTypes: "审核结果不能为空",
                baomingPingfen: "评分不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addbaoming = window.sessionStorage.getItem("addbaoming");
        if (addbaoming != null && addbaoming != "" && addbaoming != "null") {
            window.sessionStorage.removeItem('addbaoming');
            //注册表单验证
            $(validform());
            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("baoming/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
            laydate.render({
                elem: '#insertTime-input'
                ,type: 'datetime'
            });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        chuangyexiangmuDataBind();
        jiaoshiDataBind();
        yonghuDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#bianhao").val(ruleForm.bianhao);
        $("#chuangyexiangmuId").val(ruleForm.chuangyexiangmuId);
        $("#yonghuId").val(ruleForm.yonghuId);
        $("#baomingPhone").val(ruleForm.baomingPhone);
        $("#insertTime-input").val(ruleForm.insertTime);
        $("#jiaoshiId").val(ruleForm.jiaoshiId);
        $("#baomingPingfen").val(ruleForm.baomingPingfen);

    }
    <!--  级联表的数据回显  -->
    function chuangyexiangmuDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#chuangyexiangmuId").val(ruleForm.id);

        $("#chuangyexiangmuName").val(ruleForm.chuangyexiangmuName);
        $("#jiaoshiId").val(ruleForm.jiaoshiId);
        $("#leixValue").val(ruleForm.leixValue);
        $("#chuangyexiangmuContent").val(ruleForm.chuangyexiangmuContent);
    }

    function jiaoshiDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#jiaoshiId").val(ruleForm.id);

        $("#username").val(ruleForm.username);
        $("#password").val(ruleForm.password);
        $("#jiaoshiName").val(ruleForm.jiaoshiName);
        $("#sexValue").val(ruleForm.sexValue);
        $("#jiaoshiIdNumber").val(ruleForm.jiaoshiIdNumber);
        $("#jiaoshiPhone").val(ruleForm.jiaoshiPhone);
    }

    function yonghuDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#yonghuId").val(ruleForm.id);

        $("#username").val(ruleForm.username);
        $("#password").val(ruleForm.password);
        $("#yonghuName").val(ruleForm.yonghuName);
        $("#sexValue").val(ruleForm.sexValue);
        $("#yonghuIdNumber").val(ruleForm.yonghuIdNumber);
        $("#yonghuPhone").val(ruleForm.yonghuPhone);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        chuangyexiangmuShowImg();
        jiaoshiShowImg();
        yonghuShowImg();
    }


    <!--  级联表的图片  -->

    function chuangyexiangmuShowImg() {
        $("#chuangyexiangmuPhotoImg").attr("src",ruleForm.chuangyexiangmuPhoto);
    }


    function jiaoshiShowImg() {
        $("#jiaoshiPhotoImg").attr("src",ruleForm.jiaoshiPhoto);
    }


    function yonghuShowImg() {
        $("#yonghuPhotoImg").attr("src",ruleForm.yonghuPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            baomingTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            chuangyexiangmuSelect();
            jiaoshiSelect();
            yonghuSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationBaomingtypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationchuangyexiangmuSelect();
            initializationjiaoshiSelect();
            initializationyonghuSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') != '管理员') {
            $('#jifen').attr('readonly', 'readonly');
            //$('#money').attr('readonly', 'readonly');
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>