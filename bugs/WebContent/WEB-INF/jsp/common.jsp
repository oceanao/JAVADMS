<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<link href="${pageContext.request.contextPath }/static/css/user.css"
	type="text/css" rel="stylesheet" /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <style type="text/css">
     .int{ height: 30px; text-align: left; width: 600px; }
     label{ width: 200px; margin-left: 20px; }
     .high{ color: red; }
     .msg{ font-size: 13px; }
     .onError{ color: red; }
     .onSuccess{ color: green; }
    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-1.10.2.js"></script>
</head>
<body>
    <form method="post" action="">
        <div class="int">
            <label for="name">名称：</label>
            <input type="text" id="name" class="required" />
        </div>
        <div class="int">
            <label for="email">邮箱：</label>
            <input type="text" id="email" class="required" />
        </div>
          <div class="int">
            <label for="telephone">电话：</label>
            <input type="text" id="telephone" class="required" />
        </div>
        
      
        
             <div class="int">
            <label for="password">密码：</label>
            <input type="password" id="password" class="required" />
        </div>
        
            <div class="int">
            <label for="passwordform">确认密码：</label>
            <input type="password" id="passwordform" class="required" />
        </div>
        <div class="int">
            <label for="address">地址：</label>
            <input type="text" id="personinfo" />
        </div>
        <div class="int">
            <input type="submit" value="提交" id="send" style="margin-left: 70px;" />
            <input type="reset" value="重置" id="res" />
        </div>
    </form>
    <script type="text/javascript">
    $(document).ready(function(){
        //为表单的必填文本框添加提示信息（选择form中的所有后代input元素）
        $("form :input.required").each(function(){ 
            //创建元素
            var $required = $("<strong class='high'>*</strong>");
            //将它追加到文档中
            $(this).parent().append($required);
        });
        
        //为表单的必填文本框添加相关事件（blur、focus、keyup）
        $("form :input").blur(function(){
            //注意：这里的this是DOM对象，$(this)才是jQuery对象
            var $parent = $(this).parent();
            //删除之前的错误提醒信息
            $parent.find(".msg").remove();
            //验证“名称”
            if($(this).is("#name")){
                //运用jQuery中的$.trim()方法，去掉首位空格
                if($.trim(this.value) == "" || $.trim(this.value).length < 6){
                    var errorMsg = " 请输入至少6位的名称！";
                    //class='msg onError' 中间的空格是层叠样式的格式
                    $parent.append("<span class='msg onError'>" + errorMsg + "</span>"); 
                }
                else{
                    var okMsg=" 输入正确";
                    $parent.find(".high").remove();
                    $parent.append("<span class='msg onSuccess'>" + okMsg + "</span>");
                }                
            }
            
            if($(this).is("#password")){
                //运用jQuery中的$.trim()方法，去掉首位空格
                if($.trim(this.value) == "" ){
                    var errorMsg = " 请输入6~20个字符！";
                    //class='msg onError' 中间的空格是层叠样式的格式
                    $parent.append("<span class='msg onError'>" + errorMsg + "</span>"); 
                }
                else if($.trim(this.value).length < 6)
                	{
                	  var errorMsg = " 密码过短！";
                      //class='msg onError' 中间的空格是层叠样式的格式
                      $parent.append("<span class='msg onError'>" + errorMsg + "</span>"); 
                	}
                else if($.trim(this.value).length  >20)
                {
                    var errorMsg = " 密码过长！";
                    //class='msg onError' 中间的空格是层叠样式的格式
                    $parent.append("<span class='msg onError'>" + errorMsg + "</span>"); 
                }
                else{
                    var okMsg=" 输入正确";
                    $parent.find(".high").remove();
                    $parent.append("<span class='msg onSuccess'>" + okMsg + "</span>");
                    password=$.trim(this.value);
                }                
            }

            if($(this).is("#passwordform")){
                //运用jQuery中的$.trim()方法，去掉首位空格
       /*          if($.trim(this.value) == "" ){
                    var errorMsg = " 请输入6~20个字符！";
                    //class='msg onError' 中间的空格是层叠样式的格式
                    $parent.append("<span class='msg onError'>" + errorMsg + "</span>"); 
                }
                else if($.trim(this.value).length < 6)
                	{
                	  var errorMsg = " 密码过短！";
                      //class='msg onError' 中间的空格是层叠样式的格式
                      $parent.append("<span class='msg onError'>" + errorMsg + "</span>"); 
                	}
                else if($.trim(this.value).length  >20)
                {
                    var errorMsg = " 密码过长！";
                    //class='msg onError' 中间的空格是层叠样式的格式
                    $parent.append("<span class='msg onError'>" + errorMsg + "</span>"); 
                }*/
                if($.trim(this.value) == password )
                {
                    var okMsg=" 输入正确";
                    $parent.find(".high").remove();
                    $parent.append("<span class='msg onSuccess'>" + okMsg + "</span>");
                }           
                else
                {
                    var errorMsg = " 两次密码不符！";
                    //class='msg onError' 中间的空格是层叠样式的格式
                    $parent.append("<span class='msg onError'>" + errorMsg + "</span>"); 
                }
            }
            
            
            
            if($(this).is("#telephone")){
                //运用jQuery中的$.trim()方法，去掉首位空格
                if($.trim(this.value) == "" || $.trim(this.value)!=""&&!(/^1[34578]\d{9}$/.test($.trim(this.value)))){
                    var errorMsg = " 请输入正确的手机号！";
                    //class='msg onError' 中间的空格是层叠样式的格式
                    $parent.append("<span class='msg onError'>" + errorMsg + "</span>"); 
                }
                else{
                    var okMsg=" 输入正确";
                    $parent.find(".high").remove();
                    $parent.append("<span class='msg onSuccess'>" + okMsg + "</span>");
                }                
            }
            
            //验证邮箱
            if($(this).is("#email")){
                if($.trim(this.value) == "" || ($.trim(this.value) != "" && !/.+@.+\.[a-zA-Z]{2,4}$/.test($.trim(this.value)))){
                    var errorMsg = "请输入正确的E-Mail地址！";
                    $parent.append("<span class='msg onError'>" + errorMsg + "</span>");
                }
                else{
                    var okMsg=" 输入正确";
                    $parent.find(".high").remove();
                    $parent.append("<span class='msg onSuccess'>" + okMsg + "</span>");
                }
            }
        }).keyup(function(){
            //triggerHandler 防止事件执行完后，浏览器自动为标签获得焦点
            $(this).triggerHandler("blur");
        }).focus(function(){
            $(this).triggerHandler("blur");
        });
        
        //点击重置按钮时，触发文本框的失去焦点事件
        $("#send").click(function(){
            //trigger 事件执行完后，浏览器会为submit按钮获得焦点
            $("form .required:input").trigger("blur"); 
            var numError = $("form .onError").length;
            if(numError){
                return false;
            }
            alert("注册成功，密码已发到你的邮箱");
        });
    });
    </script>
</body>
</html>