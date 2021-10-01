<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    	String fId = (String)session.getAttribute("fId");
    %>
<!doctype html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Flyscanner</title>
    <!-- 플라이스캐너 로고   -->
    <link rel="icon" href="">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/slick.css">
	<link rel="stylesheet" href="resources/css/flaticon.css">
	<link rel="stylesheet" href="resources/css/animate.css">
	<link rel="stylesheet" href="resources/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
	<link rel="stylesheet" href="resources/css/themify-icons.css">
	<link rel="stylesheet" href="resources/css/magnific-popup.css">
    <link rel="stylesheet" href="resources/css/gijgo.min.css">
    <link rel="stylesheet" href="resources/css/nice-select.css">
	<!--제이쿼리 ui css-->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<!--제이쿼리 js-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!--제이쿼리 ui js-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- 카카오 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script type="text/javascript">
	function kakaoLogout() {							// 카카오 서버에 요청하는 logout function.
		Kakao.init('12834938b9d60b4b8bc5becd102451f4'); // API 인증키
		Kakao.isInitialized();							// API 초기화
		console.log(Kakao.isInitialized());				
		
		if (!Kakao.Auth.getAccessToken()) {				// 토큰이 발급되지 않았다면 --> 로그인x 
			  console.log('Not logged in.');			
			  alert('Not logged in.');					// 로그인 하지않았다는 메세지 출력
			  return;
			}
			Kakao.Auth.logout(function() {				// 토큰값이 있을때 카카오에 요청 fucntion
			  console.log(Kakao.Auth.getAccessToken());
			  
			  var accessToken = Kakao.Auth.getAccessToken();  // 토큰값을 변수에 저장.
				Kakao.Auth.setAccessToken(accessToken); 	  
				console.log(accessToken);					  // 로그아웃이 되었는지 Console을 통해 확인
				alert(accessToken);								
			});
	}
</script>
	<!-- 기능 -->


</head>

<body>
   <!-- 탑헤드-->
   <header class="main_menu">
        <div class="sub_menu">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-sm-12 col-md-6">
                        <div class="sub_menu_right_content">
                           <%if(fId != null){ %>
                            <span><%= fId %> 님 환영합니다! </span>
                            <%} %>
                            <%if(fId == null){ %>
	                            <a href="member_join.jsp">회원가입</a>
	                            <a href="member_login.jsp">로그인</a>
	                            <a href="member_weather.jsp">날씨&지도</a>
                            	<%} %>
                            <%if(fId != null){ %>
								<a href="member_myPage.jsp">mypage</a>
								<a href="logout.member" id="logout" onclick="kakaoLogout()">로그아웃</a> 
								<a href="member_weather.jsp">날씨&지도</a>
								<%} %>	
                        </div>
                    </div>
                    <div class="col-lg-6 col-sm-12 col-md-6">
                        <div class="sub_menu_social_icon">
                            <a href="#"><i class="flaticon-facebook"></i></a>
                            <a href="#"><i class="flaticon-twitter"></i></a>
                            <a href="#"><i class="flaticon-skype"></i></a>
                            <a href="#"><i class="flaticon-instagram"></i></a>
                            <span><i class="flaticon-phone-call"></i>031-8888-7777</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 헤드 -->
        <div class="main_menu_iner">
            <div class="container">
                <div class="row align-items-center ">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
                            <a class="navbar-brand" href="index.jsp"> <img src="resources/img/logo(1).png" alt="logo"> </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse main-menu-item justify-content-center"
                                id="navbarSupportedContent">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="index.jsp">홈</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">항공권</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">호텔</a>
                                    </li>
                                   <!--  <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            블로그
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="blog.html">블로그</a>
                                            <a class="dropdown-item" href="single-blog.html">개인 블로그</a>
                                        </div> -->
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown_1"
                                            role="button" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            고객센터
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
                                            <a class="dropdown-item" href="#">QnA</a>
                                            <a class="dropdown-item" href="#">FAQ</a>
                                            <a class="dropdown-item" href="#">기타</a>
                                        </div>
                                    </li>
                                   <!--  <li class="nav-item">
                                        <a class="nav-link" href="contact.html">고객센터</a>
                                    </li> -->
                                </ul>
                            </div>
                            <a href="#" class="btn_1 d-none d-lg-block">예약하다</a>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- 헤드파트 끝-->
    
    <!-- 메인 배너 화면 사진 및 문구-->
    <section class="banner_part">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-10">
                    <div class="banner_text text-center">
                        <div class="banner_text_iner">
                            <h1> Travel </h1>
                            <p>시작해봐요 ! 여행지로 ! 휴양지로  !</p>
                            <a href="#" class="btn_1">지금 떠나기 ! </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 메인배너 -->

 	<!-- 예약 파트 시작-->
    <!-- <section class="booking_part">
        <div class="container">
                    </div>
    </section> -->
    
    <!-- 헤더 파트 끝-->
  
   <!--top place start-->
    <section class="top_place section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2>Top Places to visit</h2>
                        <p>Waters make fish every without firmament saw had. Morning air subdue. Our. Air very one. Whales grass is fish whales winged.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <img src="resources/img/single_place_1.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">travel</a>
                                <h3>Saintmartine Iceland</h3>
                                <p>Technaf, Bangladesh</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(210 review)</span>
                                </div>
                            </div>
                            <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <img src="resources/img/single_place_2.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">travel</a>
                                <h3>Saintmartine Iceland</h3>
                                <p>Technaf, Bangladesh</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(210 review)</span>
                                </div>
                            </div>
                            <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <img src="resources/img/single_place_3.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">travel</a>
                                <h3>Saintmartine Iceland</h3>
                                <p>Technaf, Bangladesh</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(210 review)</span>
                                </div>
                            </div>
                            <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_place">
                        <img src="resources/img/single_place_4.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">travel</a>
                                <h3>Saintmartine Iceland</h3>
                                <p>Technaf, Bangladesh</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(210 review)</span>
                                </div>
                            </div>
                            <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="#" class="btn_1 text-cnter">Discover more</a>
            </div>
        </div>
    </section>
    <!--top place end-->

    <!--::industries start::-->
    <section class="hotel_list section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2>Hotel & Resorts</h2>
                        <p>여행은 다른 문화, 다른 사람을 만나고 결국에는 자기자신을 만나는 것이다. -한비야</p>
                        <p>지금 바로 Flyscanner 와 함께 떠나보시는건 어떨까요?</p>
                    </div>
                </div>
            </div>
            <div class="row">
      	   <div class="col-lg-4 col-sm-6">
                    <div class="single_ihotel_list">
                        <img src="resources/img/ind/industries_1.png" alt="">
                        
                        <div class="hotel_text_iner">
                            <h3> <a href="#">윈덤 뉴요커 호텔</a></h3>
                            <p>뉴욕, 미국</p>
                            <h5>가격 <span>280,590 KRW ~</span></h5>
                        </div>
                    </div>
                </div>
      		
         		  <div class="col-lg-4 col-sm-6">
                    <div class="single_ihotel_list">
                        <img src="resources/img/ind/industries_2.png" alt="">
                        
                        <div class="hotel_text_iner">
                            <h3> <a href="#">사코 런던 카나리 와프 호텔</a></h3>
                            <p>런던, 영국</p>
                            <h5>가격 <span>600,000 KRW ~ </span></h5>
                        </div>
                    </div>
                </div>
      		
                <div class="col-lg-4 col-sm-6">
                    <div class="single_ihotel_list">
                        <img src="resources/img/ind/industries_3.png" alt="">
                        
                        <div class="hotel_text_iner">
                            <h3> <a href="#"> 그레이트 서던 호텔</a></h3>
                            <p>시드니, 호주</p>
                            <h5>가격 <span>780,000 KRW ~</span></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::industries end::-->


    <!-- footer part start-->
    <footer class="footer-area">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-sm-6 col-md-5">
                    <div class="single-footer-widget">
                        <h4>FOR TRAVELER</h4>
                        <ul>
                            <li><a href="#">항공권</a></li>
                            <li><a href="#">호텔</a></li>
                            <li><a href="member_weather.jsp">날씨</a></li>
                            <li><a href="#">고객센터</a></li>
                            <li><a href="#">QnA</a></li>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">여행</a></li>
                            <li><a href="#">런던, 영국</a></li>
                            <li><a href="#">도쿄, 일본</a></li>
                            <li><a href="#">서울, 대한민국</a></li>
                            <li><a href="#">뉴욕, 미국</a></li>
                            <li><a href="#">시드니, 오스트레일리아</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="single-footer-widget">
                        <h4>Subscribe Newsletter</h4>
                        <div class="form-wrap" id="mc_embed_signup">
                            <form target="_blank"
                                action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                                method="get" class="form-inline">
                                <input class="form-control" name="EMAIL" placeholder="Your Email Address"
                                    onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '"
                                    required="" type="email">
                                <button class="click-btn btn btn-default text-uppercase"> <i class="far fa-paper-plane"></i>
                                </button>
                                <div style="position: absolute; left: -5000px;">
                                    <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value=""
                                        type="text">
                                </div>

                                <div class="info"></div>
                            </form>
                        </div>
                        <p>Subscribe our newsletter to get update news and offers</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="single-footer-widget footer_icon">
                        <h4>Contact Us</h4>
                        <p>서울특별시 종로구 세종로 1-58,   <br> 
                                02-3402-8888</p>
                        <span>flyscanner@spring.com</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="copyright_part_text text-center">
                        <p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="#" target="_blank">FlyScanner</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer part end-->

</body>

</html>
