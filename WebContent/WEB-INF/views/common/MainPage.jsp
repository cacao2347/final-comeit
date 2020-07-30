<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>.jsp</title>
  <!-- Bootstrap core CSS -->
  
<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/common/mainpage.css">
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<!-- 파비콘 -->
<link rel="shortcut icon" href="<%=cp %>/assets/images/pen_1.ico" type="image/x-icon">
<link rel="icon" href="<%=cp %>/assets/images/pen_1.ico" type="image/x-icon">

<!-- 글꼴 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<style type="text/css">
body{font-family: 'Noto Sans KR', sans-serif;}
</style>
<script type="text/javascript">

	$(document).ready(function() 
	{
	    $('#myCarousel').carousel({
	      interval: 6000
	    });
	});

</script>

</head>
<body>
<c:import url="header.jsp">
</c:import>
<%-- <jsp:include page="header.jsp"></jsp:include> --%>
  <!-- Page Content -->
  <div class="main_image">
		<div class="carousel slide" id="myCarousel">
        	<div class="carousel-inner">
	            <div class="item active">
	                    <img src="<%=cp %>/assets/images/main_img_1.jpg" style="width:100%; height:324px;">
	                    <div class="carousel-caption active align-items-center"> 
	                    	<h1>COME-IT</h1>
	                    	<p>프로그래밍은 즐겨야 한다.</p> 
	                   	</div>
	              </div><!-- /Slide1 --> 
	            <div class="item">
	                    <img src="<%=cp %>/assets/images/main_img_2.jpg" style="width:100%; height:324px;">
	                    <div class="carousel-caption active align-items-center"> 
	                    	<h1>COME-IT</h1>
	                    	<p>프로그래밍은 상상이다.</p> 
	                   	</div>
	              </div><!-- /Slide2 --> 
	        </div>
			
			<ul class="carousel-indicators"> 
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li> <!--0번부터시작--> 
				<li data-target="#myCarousel" data-slide-to="1"></li> 
			</ul>
	                   
	    </div>
	</div>
  
  <div class="container" style="height: 500px;">
  <br>
  <div class="carousel slide" id="myCarousel2" data-interval="false">
        <div class="carousel-inner">
            <div class="item active">
            		<h3>모집중인 스터디</h3>
                    <ul class="thumbnails">
                        <li class="col-sm-3">
    						<div class="fff">
								<div class="thumbnail">
									<a href="#"><img src="<%=cp %>/assets/images/차오즈.jpg" style="width: 227.5px; height: 227.5px;"></a>
								</div>
								<div class="caption">
									<h4>차오즈와 함께 자바공부하실분</h4>
									<p>자바는 사랑입니다.</p>
									
								</div>
                            </div>
                        </li>
                        <li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail">
									<a href="#"><img src="<%=cp %>/assets/images/신민아.jpg" style="width: 227.5px; height: 227.5px;"></a>
								</div>
								<div class="caption">
									<h4>아차산에서 정보산업기사 공부하실분</h4>
									<p>매주 목요일날 모입니다.</p>
									
								</div>
                            </div>
                        </li>
                        <li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail">
									<a href="#"><img src="<%=cp %>/assets/images/아이유.jpg" style="width: 227.5px; height: 227.5px;"></a>
								</div>
								<div class="caption">
									<h4>홍대입구에서 제이쿼리 공부해요!</h4>
									<p>제이쿼리 공부합시다!</p>
									
								</div>
                            </div>
                        </li>
                        <li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail">
									<a href="#"><img src="<%=cp %>/assets/images/차오즈.jpg" style="width: 227.5px; height: 227.5px;"></a>
								</div>
								<div class="caption">
									<h4>합정에서 데이터베이스 공부해요!</h4>
									<p>매주 월, 목에 모입니다!</p>
									
								</div>
                            </div>
                        </li>
                    </ul>
              </div><!-- /Slide1 --> 
            
            <div class="item">
            		<h3>모집중인 강의</h3>
                    <ul class="thumbnails">
                        <li class="col-sm-3">	
							<div class="fff">
								<div class="thumbnail">
									<a href="#"><img src="<%=cp %>/assets/images/차오즈.jpg" stylealt=""></a>
								</div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
									
								</div>
                            </div>
                        </li>
                        <li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail">
									<a href="#"><img src="<%=cp %>/assets/images/아이유.jpg" alt=""></a>
								</div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
									
								</div>
                            </div>
                        </li>
                        <li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail">
									<a href="#"><img src="<%=cp %>/assets/images/신민아.jpg" alt=""></a>
								</div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
									
								</div>
                            </div>
                        </li>
                        <li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail">
									<a href="#"><img src="<%=cp %>/assets/images/차오즈.jpg" alt=""></a>
								</div>
								<div class="caption">
									<h4>Praesent commodo</h4>
									<p>Nullam Condimentum Nibh Etiam Sem</p>
									
								</div>
                            </div>
                        </li>
                    </ul>
              </div><!-- /Slide3 --> 
        </div>     
       
	   <nav>
			<ul class="control-box pager">
				<li><a data-slide="prev" href="#myCarousel2" class=""><i class="glyphicon glyphicon-chevron-left"></i></a></li>
				<li><a data-slide="next" href="#myCarousel2" class=""><i class="glyphicon glyphicon-chevron-right"></i></li>
			</ul>
		</nav>
	   <!-- /.control-box -->   
                              
    </div><!-- /#myCarousel -->
    
 </div>
 
<div class="img">
        <div class="content">
            <h1>COME-IT 은...</h1>
            <h2></h2>
        </div>
        <div class="img-cover"></div>
</div>

<%-- <jsp:include page="footer.jsp"></jsp:include> --%>
<c:import url="footer.jsp"></c:import>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>