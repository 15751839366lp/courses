<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    pageContext.setAttribute("ctp", request.getContextPath());
%>
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="/static/favicon.ico"><script type="text/javascript">
    function resetValue() {
        $("#userName").val("");
        $("#password").val("");
        $("#stuNo").val("");
        $("#professional").val("");
    }
    $(function () {
        $("#edit").click(function () {
            var userName = $("#userName").val();
            var password = $("#password").val();
            var stuNo = $("#stuNo").val();
            var professional = $("#professional").val();
            if (userName == null || userName == "") {
                $("#error").html("姓名不能为空！");
                return false;
            }
            if (password == null || password == "") {
                $("#error").html("密码不能为空！");
                return false;
            }

            if (stuNo == null || stuNo == "") {
                $("#error").html("学号不能为空！");
                return false;
            }
            if (professional == null || professional == "") {
                $("#error").html("专业不能为空！");
                return false;
            }
            $("#editForm").submit();
        });
    });
</script>
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">修改信息</h3>
    </div>
    <div class="panel-body">
        <form class="form-horizontal" role="form" method="post" action="${ctp}/stu/${stu.id}" id="editForm">
            <input type="hidden" name="_method" value="put"/>
            <div class="form-group">
                <label  class="col-md-2 control-label">姓名：</label>
                <div class="col-md-10">
                    <input type="text" class="form-control" id="userName"  name="userName" style="width: 300px;"  value="${stu.userName}">
                </div>
            </div>
            <div class="form-group">
                <label  class="col-md-2 control-label">密码：</label>
                <div class="col-md-10">
                    <input type="text" class="form-control" id="password"  name="password" style="width: 300px;"  value="${stu.password}">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">学号：</label>
                <div class="col-md-10">
                    <input type="text" class="form-control" id="stuNo"  name="stuNo" style="width: 300px;"  value="${stu.stuNo}">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2 control-label">专业：</label>
                <div class="col-md-10">
                    <input type="text" class="form-control" id="professional"  name="professional" style="width: 300px;"  value="${stu.professional}">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">

                    <!--<input type="submit" value="修改" class="btn btn-primary" id="edit"/>-->
                    <button type="button" class="btn btn-primary" id="edit">修改</button>&nbsp;&nbsp;
                    <button type="button" class="btn btn-primary" onclick="resetValue()">重置</button>&nbsp;&nbsp;
                    <font color="red" id="error"></font>
                </div>
            </div>
        </form>
    </div>
</div>