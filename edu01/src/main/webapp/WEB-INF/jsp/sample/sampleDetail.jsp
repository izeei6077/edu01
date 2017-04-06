<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ page import="com.class601.vo.MaGoodsVo"%>
<%@ page import="com.class601.util.Utils"%>
<%@ page import="com.class601.vo.FilesVo"%> --%>
<%	String contextPath = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<!-- jQuery -->
<script type="text/javascript" src="<%=contextPath%>/common/js/jquery-3.1.1.min.js"></script>

<!-- bootstrap -->
<link rel="stylesheet" href="<%=contextPath%>/vendor/bootstrap-3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=contextPath%>/vendor/bootstrap-3.3.7/css/bootstrap-theme.min.css" />
<script src="<%=contextPath %>/vendor/bootstrap-3.3.7/js/bootstrap.min.js"></script>

<!-- font-awesome -->
<link rel="stylesheet" href="<%=contextPath%>/vendor/fa/css/font-awesome.min.css" />

<!-- normalize -->
<link rel="stylesheet" href="<%=contextPath%>/common/css/custom_nor.css" />

<!-- page css -->
<link rel="stylesheet" href="<%=contextPath%>/common/css/style_goods.css">

<title>Seed</title>
</head>
<%-- <%
	MaGoodsVo vo = (MaGoodsVo) request.getAttribute("goodsInfo");
	FilesVo files =(FilesVo) request.getAttribute("link");
%> --%>
<body>
	<div class="wrapper">
		<header>
		<div class="row">
		<jsp:include page ="/WEB-INF/jsp/inc/menu_header.jsp">
			<jsp:param name="curMenu" value="" />
		</jsp:include>
			</div>
		</header>
		<main>
		<section>
			<div class="row">
				<div>
					<h2>사원정보</h2>
				</div>
			</div>
			<!-- /.row -->
			<div class="row">
				<ul class="chk-button">
					<li><a href="<%=contextPath%>/sample/openSampleList.do" class="btn btn-default">목록으로</a></li>
					<li><a href="<%=contextPath%><%-- /maGoods/updateView.do?goodsCode=<%=vo.getGoodsCode()%> --%>" class="btn btn-info">수정</a></li>
				</ul>
			</div>
			
			<div class="row">
				<div class="col-lg-6 col-lg-offset-3 col-md-12">
					<form name="detail" action="<%=contextPath%>/sample/detail.do" method="POST" role="form"
						class="input-form goods">
						<div class="clearfix"></div>

						<%-- <div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="userId">사용자ID</label> 
									<input type="text" id="userId" class="form-control" name="userId" value="<%=Utils.nullSpace(vo.getGoodsCode())%>"readonly>
								</div>
								<div class="form-group">
									<label for="userName">사용자이름</label> 
									<input type="text" id="userName" class="form-control" name="goodsName"value="<%=Utils.nullSpace(vo.getGoodsNm())%>"readonly>
								</div>
								<div class="form-group">
									<label for="userPhone">휴대폰번호</label> 
									<input type="text" id="userPhone" class="form-control" name="goodsPrice"value="<%=Utils.nullSpace(vo.getGoodsPrice())%>"readonly>
								</div>
								
								<div class="form-group">
									<label for="userEmail">이메일주소</label> 
									<input type="text" id="userEmail" class="form-control" name="goodsCategory"value="<%=Utils.nullSpace(vo.getGoodsSelCat())%>"readonly>
								</div>
								<div class="form-group">
									<label for="corpCode">업체코드</label> 
									<input type="text" id="corpCode" class="form-control" name="goodsIngredi"value="<%=Utils.nullSpace(vo.getGoodsMtr())%>"readonly>
								</div>
								<div class="form-group">
									<label for="corpName">업체명</label> 
									<input type="text" id="corpName" class="form-control" name="goodsCaution"value="<%=Utils.nullSpace(vo.getGoodsCaut())%>"readonly>
								</div>
								<div class="form-group">
									<label for="corpLevel">업체등급</label> 
									<input type="text" id="corpLevel" class="form-control" name="goodsCaution"value="<%=Utils.nullSpace(vo.getGoodsCaut())%>"readonly>
								</div>
								<div class="form-group">
									<label for="userLevel">사용자등급</label> 
									<input type="text" id="userLevel" class="form-control" name="goodsKeeping"value="<%=Utils.nullSpace(vo.getGoodsSelKep())%>"readonly>
								</div>
								<div class="form-group">
									<label for="userRankname">사용자등급명</label> 
									<input type="text" id="userRankname" class="form-control" name="goodsKeeping"value="<%=Utils.nullSpace(vo.getGoodsSelKep())%>"readonly>
								</div>
								<div class="form-group">
									<label for="userDepartment">부서</label> 
									<input type="text" id="userDepartment" class="form-control" name="goodsCal"value="<%=Utils.nullSpace(vo.getGoodsCal())%>"readonly>
								</div>
								<div class="form-group">
									<label for="departmentName">부서명</label> 
									<input type="text" id="departmentName" class="form-control" name="goodsCal"value="<%=Utils.nullSpace(vo.getGoodsCal())%>"readonly>
								</div>
							</div>
						 	<div class="col-md-6">
								<div class="form-group">
									<label for="profileName">프로필 사진</label>
									<figure id="profileName">
										<figcaption class="sr-only"></figcaption>
										<img src="<%=vo.getLink()%>" WIDTH="400px" HEIGHT="300px"alt="사진">
									</figure>
								</div>
							</div>
						</div> --%>

					</form>
				</div>
			</div>
			<!-- /.row -->

		</section>

		</main>
		<footer></footer>
	</div>
</body>
</html>