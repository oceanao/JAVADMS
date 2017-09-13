<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加用户</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>DMS 缺陷管理系统</title>
<meta name="keywords" content="DMS 缺陷管理系统">
<meta name="description"
	content="DMS 缺陷管理系统">

<link rel="shortcut icon" href="favicon.ico">
<link
	href="${pageContext.request.contextPath }/css/bootstrap.min.css-v=3.3.5.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/font-awesome.min.css-v=4.4.0.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/animate.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/style.min.css-v=4.0.0.css"
	rel="stylesheet">
<base target="_blank">
</head>

<body class="gray-bg">
	<a href="javascript:history.go(-1)">返回上一页</a>


	<div class="ibox-content">
		<form class="form-horizontal m-t" id="signupForm"
			action="${pageContext.request.contextPath }/admin/adduser"
			target="_self" method="post">
			<input type="hidden" name="flag" value="2">
			<div class="form-group">
				<label class="col-sm-3 control-label">账号：</label>
				<div class="col-sm-8">
					<input id="firstname" name="student_num" class="form-control"
						type="text" aria-required="true" aria-invalid="true" class="error">
					<span class="help-block m-b-none"><i
						class="fa fa-info-circle"></i></span>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-3 control-label">用户名：</label>
				<div class="col-sm-8">
					<input id="username" name="username" class="form-control"
						type="text" aria-required="true" aria-invalid="true" class="error">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">密码：</label>
				<div class="col-sm-8">
					<input id="password" name="password" class="form-control"
						type="password">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">确认密码：</label>
				<div class="col-sm-8">
					<input id="confirm_password" class="form-control" type="password">
					<span class="help-block m-b-none"><i
						class="fa fa-info-circle"></i> 请再次输入您的密码</span>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">E-mail：</label>
				<div class="col-sm-8">
					<input id="email" name="email" class="form-control" type="email">
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-3 control-label">角色：</label>
				<div class="col-sm-8">

					<select id="role" name="role" class="form-control"
						required="required">

						<option value="1">开发人员</option>
						<option value="2">测试人员</option>
						<option value="3">项目组长</option>
						<option value="4">管理员</option>
					</select>

				</div>
			</div>


			<div class="form-group">
				<label class="col-sm-3 control-label">所在小组</label>
				<div class="col-sm-8">
					<select id="team_id" name="team_id" class="form-control" 数>

						<c:forEach items="${requestScope.teams}" var="team">
							<c:choose>
								<c:when test="${user.team.team_id == team.team_id }">
									<option value="${team.team_id }" selected="selected">${team.team_name}</option>
								</c:when>
								<c:otherwise>
									<option value="${team.team_id }">${team.team_name }</option>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</select>
				</div>
			</div>


			<div class="form-group">
				<div class="col-sm-8 col-sm-offset-3">
					<button class="btn btn-primary" type="submit">提交</button>
				</div>
			</div>
		</form>
	</div>
	</div>
	</div>
	</div>
	</div>
	<script
		src="${pageContext.request.contextPath }/js/jquery.min.js-v=2.1.4"
		tppabs="http://www.zi-han.net/theme/hplus/js/jquery.min.js?v=2.1.4"></script>
	<script
		src="${pageContext.request.contextPath }/js/bootstrap.min.js-v=3.3.5"
		tppabs="http://www.zi-han.net/theme/hplus/js/bootstrap.min.js?v=3.3.5"></script>
	<script
		src="${pageContext.request.contextPath }/js/content.min.js-v=1.0.0"
		tppabs="http://www.zi-han.net/theme/hplus/js/content.min.js?v=1.0.0"></script>
	<script
		src="${pageContext.request.contextPath }/js/plugins/validate/jquery.validate.min.js"
		tppabs="http://www.zi-han.net/theme/hplus/js/plugins/validate/jquery.validate.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/plugins/validate/messages_zh.min.js"
		tppabs="http://www.zi-han.net/theme/hplus/js/plugins/validate/messages_zh.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/demo/form-validate-demo.min.js"
		tppabs="http://www.zi-han.net/theme/hplus/js/demo/form-validate-demo.min.js"></script>
	<script type="${pageContext.request.contextPath }/text/javascript"
		src="../../../tajs.qq.com/stats-sId=9051096"
		tppabs="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>