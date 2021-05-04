<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSon형식으로 데이터 주고 받기</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#sendButton").click(
			function() {
				var params = {"userId":$("#userId").val(),"userPwd":$("#userPwd").val()};
				$.ajax({
					type: "get",
					url: "ajax_ok.jsp",
					data: $.param(params),//userId=aaa&userPwd=1234
					dataType : "json",
					success : function (args) {
						console.log(args);
						var str = "userId=" + args.userId + ",userPwd=" +args.userPwd +"<br/>";
						$("#resultDIV").html(str);
					},
					error: function(e) {
						alert(								
							/* "code : " + request.gets */
							
						
						);
					}					
				});				
			});		
	});
</script>
</head>
<body>
	아이디 :<input type="text" id="userId" /><br />
	패스워드:<input type="text" id="userPwd" /><br />
	<button id="sendButton">전송</button><br /><br />
	<div id="resultDIV"></div>
</body>
</html>