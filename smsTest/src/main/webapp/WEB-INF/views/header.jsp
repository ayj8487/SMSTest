<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta content="Codescandy" name="author">
  <title>DADOK</title>
  <link href="../assets/libs/tiny-slider/dist/tiny-slider.css" rel="stylesheet">
  <link href="../assets/libs/nouislider/dist/nouislider.min.css" rel="stylesheet">
<!-- Favicon icon-->
<link rel="shortcut icon" type="image/x-icon" href="../assets/images/favicon/favicon.ico">


<!-- Libs CSS -->
<link href="../assets/libs/bootstrap-icons/font/bootstrap-icons.min.css" rel="stylesheet">
<link href="../assets/libs/feather-webfont/dist/feather-icons.css" rel="stylesheet">
<link href="../assets/libs/simplebar/dist/simplebar.min.css" rel="stylesheet">


<!-- Theme CSS -->
<link rel="stylesheet" href="../assets/css/theme.min.css">
<!-- Google tag (gtag.js) -->



<!-- End Tag -->
</head>

<body>

<!-- 전체 화면 일 때  -->
  <div class="border-bottom ">
    <div class="bg-light py-1">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-12 text-center text-md-start">
          <span> DADOK </span>
          </div>
          	
          	<!-- 우측 최상단 구성 -->
          
        </div>
      </div>
    </div>
    <div class="py-5">
      <div class="container">
        <div class="row w-100 align-items-center gx-lg-2 gx-0">
          <div class="col-xxl-2 col-lg-3">

	<!-- 로고/제목(데스크톱) -->
            <a class="navbar-brand d-none d-lg-block" href="../index.html">
				<h1>DADOK</h1>

            </a>
	
<!-- 화면 줄었을 때 작업 -->
            <div class="d-flex justify-content-between w-100 d-lg-none">
	
	<!-- 로고/제목(모바일) -->	
			<h1>DADOK</h1>
              <div class="d-flex align-items-center lh-1">
		
                <div class="list-inline me-4">
                 
                 
					<!-- 회원가입 아이콘 -->
                  <div class="list-inline-item">
					
                    <a href="#!" class="text-muted" data-bs-toggle="modal" data-bs-target="#userModal">
                      <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="feather feather-user">
                        <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                        <circle cx="12" cy="7" r="4"></circle>
                      </svg>
                    </a>
                  </div>
                  
                  
                  
            <!--  장바구니 아이콘 -->      
                  <div class="list-inline-item">

                    <a class="text-muted position-relative " data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight"
                      href="#offcanvasExample" role="button" aria-controls="offcanvasRight">
                      <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="feather feather-shopping-bag">
                        <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path>
                        <line x1="3" y1="6" x2="21" y2="6"></line>
                        <path d="M16 10a4 4 0 0 1-8 0"></path>
                      </svg>
                      
                      <!-- 항목 아이콘 -->
                      <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-success">
                        9999
                        <span class="visually-hidden">unread messages</span>
                      </span>
                    
                    
                    </a>
                  </div>

                </div>
                
              <!-- 메뉴 버튼 -->  
                <button class="navbar-toggler collapsed" type="button" data-bs-toggle="offcanvas" data-bs-target="#navbar-default" aria-controls="navbar-default" aria-label="Toggle navigation">
                  <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor"
                    class="bi bi-text-indent-left text-primary" viewBox="0 0 16 16">
                    <path
                      d="M2 3.5a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm.646 2.146a.5.5 0 0 1 .708 0l2 2a.5.5 0 0 1 0 .708l-2 2a.5.5 0 0 1-.708-.708L4.293 8 2.646 6.354a.5.5 0 0 1 0-.708zM7 6.5a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5zm0 3a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5zm-5 3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5z" />
                  </svg>
                </button>

              </div>
            </div>

          </div>
        
		<div class="col-md-2 col-md-5  d-block">
		    <!-- 검색 -->
		    <form action="#">
		        <div class="input-group">
		            
					<select class="w-25 rounded" style="border-color: rgb(223, 226, 225);" >
						<option>전체</option>
					</select>&nbsp;&nbsp;
		            <input class="form-control rounded" type="search" placeholder="찾으실 도서를 검색해보세요." >
		            <span class="input-group-append">
		                <button class="btn bg-white border border-start-0 ms-n10 rounded-0 rounded-end" type="button">
		                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"
		                        fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
		                        stroke-linejoin="round" class="feather feather-search">
		                        <circle cx="11" cy="11" r="8"></circle>
		                        <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
		                    </svg>
		                </button>
		            </span>
		        </div>
		    </form>
		</div>

          
          <!-- 검색 버튼 -->
          <div class="col-md-2 col-xxl-3 d-none d-lg-block">
			
            <button type="button" class="btn  btn-outline-gray-400 text-muted" data-bs-toggle="modal"
              data-bs-target="#locationModal">
              검색 
            </button>


          </div>
          
          <div class="col-md-2 col-xxl-2 text-end d-none d-lg-block">

        	<!-- 로그인 시  -->

        <div class="list-inline d-flex align-items-center">
			  <!-- 로그인 아이콘 -->
			  <div class="list-inline-item me-5" style="margin-top: 7px;">
			    <a href="#!" class="" data-bs-toggle="modal" data-bs-target="#userModal">
			      <i class="feather-icon icon-log-out me-4"></i>
			      <div style="margin-top: 4px;" >
			      Logout
			      </div>
			      <span class="visually-hidden">unread messages</span>
			    </a>
			  </div>
			
			  <!-- 마이페이지 아이콘 -->
			  <div class="list-inline-item me-5">
			    <a href="#!" class="" >
			      <i class="bi bi-person-circle fs-4 me-4"></i>MyPage
			      <span class="visually-hidden">unread messages</span>
			    </a>
			  </div>
			
			  <!-- 장바구니 아이콘 -->
			  <div class="list-inline-item me-5">
			    <a href="#!" class="" >
			      <i class="bi bi-cart2 fs-4 me-1"></i>Cart
			      <span class="visually-hidden">unread messages</span>
			    </a>
			  </div>
			</div>
        </div>
      </div>
      
    </div>
  
    </div>
    </div>
    
    

    <nav class="navbar navbar-expand-lg navbar-light navbar-default py-0 pb-lg-4 " aria-label="Offcanvas navbar large">
    
    <!-- 메인 광고  -->
      <div class="container">


        <div class="offcanvas offcanvas-start" tabindex="-1" id="navbar-default" aria-labelledby="navbar-defaultLabel">
          <div class="offcanvas-header pb-1">
			
			<!-- 로고 위치 이미지 참조  -->
			<a href="./index.html">
				<h1>
				DADOK</h1>
            </a>	
<!--        <a href="./index.html"><img src="./assets/images/logo/freshcart-logo.svg" alt="eCommerce HTML Template">
            </a>
 -->            
            
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
          </div>
          
        <!-- 작은화면 메뉴 작업 -->
          <div class="offcanvas-body">
           
            <div class="d-block d-lg-none mb-4">
              <form action="#">
              <!-- 검색(작은화면) -->
                <div class="input-group ">
                  <input class="form-control rounded" type="search" placeholder="검색 ">
                  <span class="input-group-append">
                    <button class="btn bg-white border border-start-0 ms-n10 rounded-0 rounded-end" type="button">
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none"
                        stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                        class="feather feather-search">
                        <circle cx="11" cy="11" r="8"></circle>
                        <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                      </svg>
                    </button>
                  </span>
                </div>
              </form>
              
              <!-- 검색 버튼 -->
              <div class="mt-2">
                <button type="button" class="btn  btn-outline-gray-400 text-muted w-100 " data-bs-toggle="modal"
                  data-bs-target="#locationModal">
					검색 버튼
                </button>
              </div>
            </div>
            
            <!-- 작은화면 메인메뉴 버튼 -->
            <div class="d-block d-lg-none mb-4">
              <a class="btn btn-primary w-100 d-flex justify-content-center align-items-center" data-bs-toggle="collapse"
                href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                <span class="me-2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"
                    fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"
                    class="feather feather-grid">
                    <rect x="3" y="3" width="7" height="7"></rect>
                    <rect x="14" y="3" width="7" height="7"></rect>
                    <rect x="14" y="14" width="7" height="7"></rect>
                    <rect x="3" y="14" width="7" height="7"></rect>
                  </svg></span> 메인메뉴 버튼
              </a>
              <!-- 작은화면 메인메뉴 버튼 클릭시 옵션 -->
              <div class="collapse mt-2" id="collapseExample">
                <div class="card card-body">
                  <ul class="mb-0 list-unstyled">
                    <li><a class="dropdown-item" href="./pages/shop-grid.html">바로가기1</a></li>
                    <li><a class="dropdown-item" href="./pages/shop-grid.html">바로가기2</a></li>
                    <li><a class="dropdown-item" href="./pages/shop-grid.html">바로가기3</a></li>
                    <li><a class="dropdown-item" href="./pages/shop-grid.html">바로가기4</a></li>
                    <li><a class="dropdown-item" href="./pages/shop-grid.html">바로가기5</a></li>
                    <li><a class="dropdown-item" href="./pages/shop-grid.html">바로가기6</a></li>
                    <li><a class="dropdown-item" href="./pages/shop-grid.html">바로가기7</a></li>
                  </ul>
                </div>
              </div>
            </div>
            
           <!-- 전체화면 메뉴 클릭시  -->
            <div class="dropdown me-3 d-none d-lg-block">
              <button class="btn btn-primary px-6 " type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown"
                aria-expanded="false">
                <span class="me-1">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none"
                    stroke="currentColor" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"
                    class="feather feather-grid">
                    <rect x="3" y="3" width="7" height="7"></rect>
                    <rect x="14" y="3" width="7" height="7"></rect>
                    <rect x="14" y="14" width="7" height="7"></rect>
                    <rect x="3" y="14" width="7" height="7"></rect>
                  </svg></span> 메인메뉴 버튼
              </button>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                <li><a class="dropdown-item" href="./pages/shop-grid.html">바로가기1</a></li>
                <li><a class="dropdown-item" href="./pages/shop-grid.html">바로가기2</a></li>
                <li><a class="dropdown-item" href="./pages/shop-grid.html">바로가기3</a></li>
                <li><a class="dropdown-item" href="./pages/shop-grid.html">바로가기4</a></li>
                <li><a class="dropdown-item" href="./pages/shop-grid.html">바로가기5</a></li>
                <li><a class="dropdown-item" href="./pages/shop-grid.html">바로가기6</a></li>
                <li><a class="dropdown-item" href="./pages/shop-grid.html">바로가기7</a></li>
              </ul>
            </div>
            
            
            <div class="">
              <ul class="navbar-nav align-items-center ">
                <li class="nav-item dropdown w-100 w-lg-auto">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                    aria-expanded="false">
                    도서상품
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="./index.html">메뉴 1</a></li>
                    <li><a class="dropdown-item" href="./pages/index-2.html">메뉴 2</a></li>
                    <li><a class="dropdown-item" href="./pages/index-3.html">메뉴 3</a></li>
                    <li><a class="dropdown-item" href="./pages/index-4.html">메뉴 4</a></li>
                   <!-- new 아이콘 -->
                    <li><a class="dropdown-item" href="./pages/index-5.html">메뉴 5 <span
                          class="badge bg-light-info text-dark-info ms-1">New</span></a></li>
                  </ul>
                </li>
                <li class="nav-item dropdown w-100 w-lg-auto">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                    aria-expanded="false">
                    중고도서
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="./pages/shop-grid.html">카테고리 메뉴 1</a></li>
                    <li><a class="dropdown-item" href="./pages/shop-grid-3-column.html">메뉴 2</a></li>
                    <li><a class="dropdown-item" href="./pages/shop-list.html">메뉴 3</a></li>
                    <li><a class="dropdown-item" href="./pages/shop-filter.html">메뉴 4</a></li>
                    <li><a class="dropdown-item" href="./pages/shop-fullwidth.html">메뉴 5</a></li>
                    <li><a class="dropdown-item" href="./pages/shop-single.html">메뉴 6</a></li>
                    <li><a class="dropdown-item" href="./pages/shop-single-2.html">메뉴 7</a></li>
                    <li><a class="dropdown-item" href="./pages/shop-wishlist.html">메뉴 8</a></li>
                    <li><a class="dropdown-item" href="./pages/shop-cart.html">메뉴 9</a></li>
                  </ul>
                </li>
                <li class="nav-item dropdown w-100 w-lg-auto">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                    aria-expanded="false">
					포인트
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="./pages/store-list.html">메뉴1</a></li>
                    <li><a class="dropdown-item" href="./pages/store-grid.html">메뉴2</a></li>
                    <li><a class="dropdown-item" href="./pages/store-single.html">메뉴3</a></li>
                  </ul>
                </li>
                
                
                <!-- 상세 메뉴 -->
                <li class="nav-item dropdown w-100 w-lg-auto dropdown-fullwidth">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                    aria-expanded="false">
                    상세 메뉴 바로가기
                  </a>
                  <div class=" dropdown-menu pb-0">
                    <div class="row p-2 p-lg-4">
                      <div class="col-lg-3 col-12 mb-4 mb-lg-0">
                        <h6 class="text-primary ps-3">대제목1</h6>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목1</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목2</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목3</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목4</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목5</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목6</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목7</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목8</a>
                      </div>
                      <div class="col-lg-3 col-12 mb-4 mb-lg-0">
                        <h6 class="text-primary ps-3">대제목2</h6>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목1</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목2</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목3</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목4</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목5</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목6</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목7</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목8</a>
                      </div>
                      <div class="col-lg-3 col-12 mb-4 mb-lg-0">
                        <h6 class="text-primary ps-3">대제목3</h6>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목1</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목2</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목3</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목4</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목5</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목6</a>
                        <a class="dropdown-item" href="./pages/shop-grid.html">소제목7</a>
                      </div>
  					
  					<!-- 상세 배너 이미지 -->
                      <div class="col-lg-3 col-12 mb-4 mb-lg-0">
                        <div class="card border-0">
                          <img src="../assets/images/banner/menu-banner.jpg" alt="eCommerce HTML Template"
                            class="img-fluid">
                          <div class="position-absolute ps-6 mt-8">
                            <h5 class=" mb-0 ">이미지<br>빼도 되고 넣어도되고</h5>
                            <a href="#" class="btn btn-primary btn-sm mt-3">구매 바로가기</a>
                          </div>
                        </div>
                      </div>
                    
                    </div>
                  </div>
                </li>
                
                
<!--  
				상단 메뉴 바로가기 시 참고 
				
                <li class="nav-item w-100 w-lg-auto">
                  <a class="nav-link" href="./dashboard/index.html">
                    바로가기 6
                  </a>
                </li>
-->
				
              </ul>
            </div>
          </div>
        </div>
      </div>
    </nav>


</div>


<!-- 마이페이지 아이콘 클릭시  -->
<!--  로그인 팝업으로 써도 될듯? -->
<div class="modal fade" id="userModal" tabindex="-1" aria-labelledby="userModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content p-4">
      <div class="modal-header border-0">
        <h5 class="modal-title fs-3 fw-bold" id="userModalLabel">로그인</h5>

        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>

      <div class="modal-body">
        <form>
          <div class="mb-3">
            <label for="fullName" class="form-label">이름</label>
            <input type="text" class="form-control" id="fullName" placeholder="이름을 입력하세요 " required="">
          </div>
          <div class="mb-3">
            <label for="email" class="form-label">이메일 주소</label>
            <input type="email" class="form-control" id="email" placeholder="이메일을 입력하세요" required="">
          </div>

          <div class="mb-5">
            <label for="password" class="form-label">비밀번호</label>
            <input type="password" class="form-control" id="password" placeholder="비밀번호를 입력하세요" required="">
            <small class="form-text"> 어쩌고 저쩌고 <a href="#!">뭐 임펙트 줄라고 쓸때 쓸꺼면 쓰고</a> & <a
                href="#!">아니면 말고</a></small>
          </div>

          <button type="submit" class="btn btn-primary">로그인</button>
        </form>
      </div>
      <div class="modal-footer border-0 justify-content-center">

        계정이 없슴? <a href="#">회원가입 ㄱㄱ </a>
      </div>
    </div>
  </div>
</div>

<!--  장바구니 아이콘 클릭시 -->

<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
  <div class="offcanvas-header border-bottom">
    <div class="text-start">
      <h5 id="offcanvasRightLabel" class="mb-0 fs-4">장바구니</h5>
      <small>안영준 님</small>
    </div>
  <!-- X 버튼 클릭시 사이드바 슬라이드 -->
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">

    <div class="">
      <div class="alert alert-danger p-2" role="alert">
        뭐 경고 문구 대충 이런거  <a href="#!" class="alert-link">써도되고 안써도 되고</a>
      </div>

<!-- 사이드바 장바구니 메뉴 -->
      <ul class="list-group list-group-flush">

	<!-- 장바구니 리스트 -->
        <li class="list-group-item py-3 ps-0 border-top">
			
          <div class="row align-items-center">

            <div class="col-6 col-md-6 col-lg-7">
              <div class="d-flex">
            
            <!--  이미지 1  -->
              <img src="../assets/images/products/product-img-1.jpg" alt="Ecommerce"
                class="icon-shape icon-xxl">
                <div class="ms-3">
			<!--  이미지 1 제목 -->
              <a href="./pages/shop-single.html" class="text-inherit">
                <h6 class="mb-0">제목 1</h6>
              </a>
              <span><small class="text-muted">내용 1</small></span>


              <!-- text -->
              <div class="mt-2 small lh-1"> <a href="#!" class="text-decoration-none text-inherit"> <span
                    class="me-1 align-text-bottom">
                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none"
                      stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                      class="feather feather-trash-2 text-success">
                      <polyline points="3 6 5 6 21 6"></polyline>
                      <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2">
                      </path>
                      <line x1="10" y1="11" x2="10" y2="17"></line>
                      <line x1="14" y1="11" x2="14" y2="17"></line>
                    </svg></span><span class="text-muted">삭제 아이콘</span></a></div>
                  </div>
                </div>
            </div>

		<!-- 수량 input 버튼 -->
            <div class="col-4 col-md-3 col-lg-3">
			
		<!-- 수량 증 감소 -->	
              <div class="input-group input-spinner  ">
                <input type="button" value="-" class="button-minus  btn  btn-sm " data-field="quantity">
                <input type="number" step="1" max="10" value="1" name="quantity"
                  class="quantity-field form-control-sm form-input   ">
                <input type="button" value="+" class="button-plus btn btn-sm " data-field="quantity">
              </div>

            </div>
     
		<!--  가격 -->
            <div class="col-2 text-lg-end text-start text-md-end col-md-2">
              <span class="fw-bold">$5.00</span>

            </div>
          </div>

        </li>
       
		<!-- 장바구니 리스트 2 -->
        <li class="list-group-item py-3 ps-0 border-bottom">
          <div class="row align-items-center">
            <div class="col-6 col-md-6 col-lg-7">
              <div class="d-flex">
              <img src="../assets/images/products/product-img-5.jpg" alt="Ecommerce"
                class="icon-shape icon-xxl">
                <div class="ms-3">
			
              <a href="./pages/shop-single.html" class="text-inherit">
                <h6 class="mb-0">제목2 </h6>
              </a>
              <span><small class="text-muted">내용2</small></span>

              <div class="mt-2 small lh-1"> <a href="#!" class="text-decoration-none text-inherit"> <span
                    class="me-1 align-text-bottom">
                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none"
                      stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                      class="feather feather-trash-2 text-success">
                      <polyline points="3 6 5 6 21 6"></polyline>
                      <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2">
                      </path>
                      <line x1="10" y1="11" x2="10" y2="17"></line>
                      <line x1="14" y1="11" x2="14" y2="17"></line>
                    </svg></span><span class="text-muted">삭제 아이콘</span></a></div>
                  </div>
                </div>
            </div>
			
			<!-- 수량 증감소 -->
            <div class="col-4 col-md-3 col-lg-3">
              <div class="input-group input-spinner  ">
                <input type="button" value="-" class="button-minus  btn  btn-sm " data-field="quantity">
                <input type="number" step="1" max="10" value="1" name="quantity"
                  class="quantity-field form-control-sm form-input   ">
                <input type="button" value="+" class="button-plus btn btn-sm " data-field="quantity">
              </div>
            </div>
			<!-- 가격 -->
            <div class="col-2 text-lg-end text-start text-md-end col-md-2">
              <span class="fw-bold">$15.00</span>
            </div>
          </div>

        </li>

      </ul>
	<!--  장바구니 그룹  버튼 -->
      <div class="d-flex justify-content-between mt-4">
        <a href="#!" class="btn btn-primary">당장사버리기</a>
        <a href="#!" class="btn btn-dark">업데이트</a>
      </div>

    </div>
  </div>
</div>


<!-- 메인 시작 -->
  <main>

<!-- 현재 경로 -->
  <!-- section-->
  <div class="mt-4">
    <div class="container">
      <!-- row -->
      <div class="row ">
        <!-- col -->
        <div class="col-12">
          <!-- breadcrumb -->
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-0">
              <li class="breadcrumb-item"><a href="#!">Home</a></li>
              <li class="breadcrumb-item"><a href="#!">카테고리</a></li>
              <li class="breadcrumb-item active" aria-current="page">현재페이지</li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
  </div>
  
  <!-- section -->
  <div class=" mt-8 mb-lg-14 mb-8">
    <!-- container -->
    <div class="container">
      <!-- row -->
      <div class="row gx-10">
        <!-- col -->
        
        
