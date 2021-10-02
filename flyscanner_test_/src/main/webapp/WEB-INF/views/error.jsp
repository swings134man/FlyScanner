<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error!</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/ed304f677f.js" crossorigin="anonymous"></script>
</head>
<body>
<!-- header -->
<jsp:include page="header.jsp"></jsp:include>
<!-- header end -->

<div id="main" align="center" style="height: 600px;">
	<i class="fas fa-exclamation-circle" style="font-size: 100px;"></i>
	<h2>오류가 발생했습니다!</h2>
	<h3>자세한 사항은 관리자에게 문의하세요.</h3>
	<a href="index.jsp"><button>main 으로</button></a>
</div>
<!-- footer -->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>