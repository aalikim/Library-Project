<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Start: Header Section -->
<header id="header-v1" class="navbar-wrapper inner-navbar-wrapper">
	<div class="container">
		<div class="row">
			<nav class="navbar navbar-default">
				<div class="row">
					<div class="col-md-3">
						<div class="navbar-header">
							<div class="navbar-brand">
								<h1>
									<a href="index"> <img
										src="${pageContext.request.contextPath}/images/libraria-logo-v1.png" alt="LIBRARIA" />
									</a>
								</h1>
							</div>
						</div>
					</div>
					<div class="col-md-9">
						<!-- Header Topbar -->
						<div class="header-topbar hidden-sm hidden-xs">
							<div class="row">
								<div class="col-sm-6">
									<div class="topbar-info">
										<a href="tel:+61-3-8376-6284"><i class="fa fa-phone"></i>+82-8376-6284</a>
										<span>/</span> <a href="mailto:libraria@libraria.com"><i
											class="fa fa-envelope"></i>libraria@libraria.com</a>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="topbar-links">
									<c:if test="${role =='admin'}">
										<a href="../admin/index">Admin Page</a>
										<span>|</span>
									</c:if>
									
										<c:choose>
											<c:when test="${sessionScope.email != null }">
											<%-- <a><i class="fa fa-lock"></i>${email }</a> --%>
											<a href="logout"><i class="fa fa-lock"></i>${email }(Logout)</a>
											<c:if test="${role !='admin'}">
											<span>|</span>
												<a href="mypage"><i class="fa fa-lock"></i>mypage</a>
											</c:if>
											
											</c:when>
											<c:when test="${sessionScope.email == null }">
											<a href="login"><i class="fa fa-lock"></i>Login / Register</a>
											</c:when>
										</c:choose>
										<!-- <span>|</span> -->
										<%-- <div class="header-cart dropdown">
											<a data-toggle="dropdown" class="dropdown-toggle" href="#">
												<i class="fa fa-shopping-cart"></i> <small>0</small>
											</a>
											<div class="dropdown-menu cart-dropdown">
												<ul>
													<li class="clearfix"><img
														src="${pageContext.request.contextPath}/images/header-cart-image-01.jpg" alt="cart item" />
														<div class="item-info">
															<div class="name">
																<a href="#">The Great Gatsby</a>
															</div>
															<div class="author">
																<strong>Author:</strong> F. Scott Fitzgerald
															</div>
															<div class="price">1 X $10.00</div>
														</div> <a class="remove" href="#"><i class="fa fa-trash-o"></i></a>
													</li>
													<li class="clearfix"><img
														src="${pageContext.request.contextPath}/images/header-cart-image-02.jpg" alt="cart item" />
														<div class="item-info">
															<div class="name">
																<a href="#">The Great Gatsby</a>
															</div>
															<div class="author">
																<strong>Author:</strong> F. Scott Fitzgerald
															</div>
															<div class="price">1 X $10.00</div>
														</div> <a class="remove" href="#"><i class="fa fa-trash-o"></i></a>
													</li>
													<li class="clearfix"><img
														src="${pageContext.request.contextPath}/images/header-cart-image-03.jpg" alt="cart item" />
														<div class="item-info">
															<div class="name">
																<a href="#">The Great Gatsby</a>
															</div>
															<div class="author">
																<strong>Author:</strong> F. Scott Fitzgerald
															</div>
															<div class="price">1 X $10.00</div>
														</div> <a class="remove" href="#"><i class="fa fa-trash-o"></i></a>
													</li>
												</ul>
												<div class="cart-total">
													<div class="title">SubTotal</div>
													<div class="price">$30.00</div>
												</div>
												<div class="cart-buttons">
													<a href="cart.html" class="btn btn-dark-gray">View Cart</a>
													<a href="checkout.html" class="btn btn-primary">Checkout</a>
												</div>
											</div>
										</div> --%>
									</div>
								</div>
							</div>
						</div>
						<div class="navbar-collapse hidden-sm hidden-xs">
							<ul class="nav navbar-nav">
								<li class="dropdown active"><a data-toggle="dropdown"
									class="dropdown-toggle disabled" href="index">Home</a></li>
								<li class="dropdown"><a data-toggle="dropdown"
									class="dropdown-toggle disabled"
									href="BbooklistMain">Books &amp; Media</a></li>
								<li class="dropdown"><a data-toggle="dropdown"
									class="dropdown-toggle disabled"
									href="userNoticeMain">News &amp; Events</a></li>
								<li><a href="about">About us</a></li>
								<li><a href="contact">Contact</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 모바일 -->
				<div class="mobile-menu hidden-lg hidden-md">
					<a href="#mobile-menu"><i class="fa fa-navicon"></i></a>
					<div id="mobile-menu">
						<ul>
							<li class="mobile-title">
								<h4>Navigation</h4> <a href="#" class="close"></a>
							</li>
							<li><a href="index">Home</a>
								<!-- <ul>
									<li><a href="index-2.html">Home V1</a></li>
									<li><a href="home-v2.html">Home V2</a></li>
									<li><a href="home-v3.html">Home V3</a></li>
								</ul> --></li>
							<li><a href="bookList">Books &amp;
									Media</a>
								<!-- <ul>
									<li><a href="books-media-list-view.html">Books &amp;
											Media List View</a></li>
									<li><a href="books-media-gird-view-v1.html">Books
											&amp; Media Grid View V1</a></li>
									<li><a href="books-media-gird-view-v2.html">Books
											&amp; Media Grid View V2</a></li>
									<li><a href="books-media-detail-v1.html">Books &amp;
											Media Detail V1</a></li>
									<li><a href="books-media-detail-v2.html">Books &amp;
											Media Detail V2</a></li>
								</ul> --></li>
							<li><a href="userNoticeMain">News &amp;
									Events</a>
								<!-- <ul>
									<li><a href="news-events-list-view.html">News &amp;
											Events List View</a></li>
									<li><a href="news-events-detail.html">News &amp;
											Events Detail</a></li>
								</ul> --></li>
							<!-- <li><a href="#">Pages</a>
								<ul>
									<li><a href="cart.html">Cart</a></li>
									<li><a href="checkout.html">Checkout</a></li>
									<li><a href="signin.html">Signin/Register</a></li>
									<li><a href="404.html">404/Error</a></li>
								</ul></li>
							<li><a href="blog.html">Blog</a>
								<ul>
									<li><a href="blog.html">Blog Grid View</a></li>
									<li><a href="blog-detail.html">Blog Detail</a></li>
								</ul></li> -->
							<li><a href="about">About us</a></li>
							<li><a href="contact">Contact</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</div>
</header>
<!-- End: Header Section -->
