
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加用户</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>SYS实验室管理系统</title>
<meta name="keywords" content="SYS实验室管理系统">
<meta name="description"
	content="SYS实验室管理系统">

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
	<a class="close-link" href="javascript:window.location.reload(); " > 刷新 </a>
	

	<div class="ibox-content">
		<form class="form-horizontal m-t" id="signupForm"
			action="${pageContext.request.contextPath }/Team/updateTeam"
			target="_self" method="post">
			<input type="hidden" name="flag" value="2">
			<input type="hidden" name="team_id" value="${Team.team_id}">
			<div class="form-group">
				<label class="col-sm-3 control-label">分组名称</label>
				<div class="col-sm-8">
					<input id="team_name" name="team_name"  class="form-control"  value="${Team.team_name }"
						type="text" aria-required="true"
						aria-invalid="true" class="error"> <span
						class="help-block m-b-none"><i></i></span>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">项目组长</label>
				<div class="col-sm-8">
				
						 <select
						name="manager_id" class="form-control" required="required">

							<c:forEach items="${requestScope.users }" var="user">
							<c:choose>
								<c:when test="${Team.manager_id == user.user_id }">
									<option value="${user.user_id }" selected="selected">${user.username}</option>
								</c:when>
								<c:otherwise>
									<option value="${user.user_id }">${user.username }</option>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</select>

				</div>
			</div>
		
		
			<div class="form-group">
				<label class="col-sm-3 control-label">项目描述</label>
				<div class="col-sm-8">
					<textarea  name="team_description" class="form-control"
					 style="height: 200px;">${Team.team_description }</textarea>
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