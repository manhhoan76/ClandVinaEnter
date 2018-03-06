<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	Ajax - Demo
	This is Ajax
	<a href="javascript:void(0)" onclick="return getData()">Get dữ liệu</a>
	<div class="data">
	
	</div>
	<script type="text/javascript">
		function getData() {
			$.ajax({
				url: '${pageContext.request.contextPath}/ajax/xu-ly-ajax',
				type: 'GET',
				cache: false,
				data: {
				//Dữ liệu gửi đi
				},
				success: function(data){
				// Xử lý thành công
				$(".data").html(data);
				},
				error: function (){
				// Xử lý nếu có lỗi
				alert('Có lỗi');
				}
				});
		}
	</script>
</body>
</html>