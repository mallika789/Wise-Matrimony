<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.mt.dto.Users"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WISE Matrimony</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="WISE Matrimony" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet'
	type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Oswald:300,400,700'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Ubuntu:300,400,500,700'
	rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="css/font-awesome.css" rel="stylesheet">
<!----font-Awesome----->
<script>
	$(document).ready(function() {
		$(".dropdown").hover(function() {
			$('.dropdown-menu', this).stop(true, true).slideDown("fast");
			$(this).toggleClass('open');
		}, function() {
			$('.dropdown-menu', this).stop(true, true).slideUp("fast");
			$(this).toggleClass('open');
		});
	});
</script>
</head>
<body>
	<!-- ============================  Navigation Start =========================== -->
	<div class="navbar navbar-inverse-blue navbar">
		<!--<div class="navbar navbar-inverse-blue navbar-fixed-top">-->
		<div class="navbar-inner navbar-inner_1">
			<div class="container">
				<div class="navigation">
					<nav id="colorNav">
					<ul>
						<li class="green"><a href="Home.html" class="icon-home"></a>
							<ul>
								<li><a href="Home.html">Logout</a></li>
							</ul></li>
					</ul>
					</nav>
				</div>
				<a class="brand" href="index.html"><img
					src="images/wiselogonew.png" alt="logo"></a>
				<div class="pull-right">
					<nav class="navbar nav_bottom" role="navigation"> <!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header nav_2">
						<button type="button"
							class="navbar-toggle collapsed navbar-toggle1"
							data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							Menu <span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#"></a>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav nav_1">
							<li><a href="index.html">Home</a></li>
							<li><a href="about.html">About Us</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Matches<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="matches.html">New Matches</a></li>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Search<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="search.html">Regular Search</a></li>
									<li><a href="search-id.html">Search By Profile ID</a></li>
									<li><a href="faq.html">Faq</a></li>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Messages<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="inbox.html">Inbox</a></li>
									<li><a href="inbox.html">New</a></li>
									<li><a href="inbox.html">Accepted</a></li>
								</ul></li>
							<li class="last"><a href="contact.html">Contact Us</a></li>
							<li class="last"><a href="Home.html">Logout</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse --> </nav>
				</div>
				<!-- end pull-right -->
				<div class="clearfix"></div>
			</div>
			<!-- end container -->
		</div>
		<!-- end navbar-inner -->
	</div>
	<!-- end navbar-inverse-blue -->
	<!-- ============================  Navigation End ============================ -->

	<%
		
	%>
	<div class="grid_3">
		<div class="container">
			<div class="breadcrumb1">
				<ul>
					<a href="Home.html"><i class="fa fa-home home_1"></i></a>
					<span class="divider">&nbsp;|&nbsp;</span>
					<li class="current-page">My Profile</li>
					<tr class="opened_1">
				</ul>
			</div>
			<div class="profile">
				<div class="col-md-8 profile_left">
					<h2>Profile Id : ${userData.userId}</h2>
					
	
	
	<!-- 				
					<div class="row">
    <div class="col-sm-4">
    
    <div class="col_3">
						<div class="col-sm-4 row_2">
							<div class="flexslider">
								<ul class="slides">
									<li data-thumb="images/p2.jpg"><img src="images/p2.jpg">
									</li>
								</ul>
							</div>
						</div>
					</div>
    
    </div>
  <div class="col-sm-6">
  
  <li role="presentation" class="active"></li>
				<div class="col-sm-8 row_2">
					<table class="table_working_hours" style="margin-left:50%">
						<tbody>
							<tr class="opened_1">
								<td class="day_label">Weight :</td>
								<td class="day_value">${userData.weight}</td>
							</tr>
							<tr class="opened_1">
								<td class="day_label">Height :</td>
								<td class="day_value">${userData.height}</td>
							</tr>
							<tr class="opened">
								<td class="day_label">Religion :</td>
								<td class="day_value">${userData.religion}</td>
							</tr>
							<tr class="opened">
								<td class="day_label">Marital Status :</td>
								<td class="day_value">${userData.maritalStatus}</td>
							</tr>
							<tr class="opened">
								<td class="day_label">Location :</td>
								<td class="day_value">${userData.country}</td>
							</tr>
							<tr class="opened">
								<td class="day_label">Education :</td>
								<td class="day_value closed"><span>${userData.higherEducation}</span></td>
							</tr>
						</tbody>
					</table>
				</div>
  
  </div>
  </div>-->
					
					
					
					
					
					 <div class="col_3">
						<div class="col-sm-4 row_2">
							<div class="flexslider">
								<ul class="slides">
									<li data-thumb="images/p2.jpg"><img src="images/p2.jpg">
									</li>
								</ul>
							</div>
						</div>
					</div>
				<li role="presentation" class="active"></li>
				<div class="col-sm-8 row_2">
					<table class="table_working_hours" style="margin-left:40%">
						<tbody>
							<tr class="opened_1">
								<td class="day_label">Weight :</td>
								<td class="day_value">${userData.weight}</td>
							</tr>
							<tr class="opened_1">
								<td class="day_label">Height :</td>
								<td class="day_value">${userData.height}</td>
							</tr>
							<tr class="opened">
								<td class="day_label">Religion :</td>
								<td class="day_value">${userData.religion}</td>
							</tr>
							<tr class="opened">
								<td class="day_label">Marital Status :</td>
								<td class="day_value">${userData.maritalStatus}</td>
							</tr>
							<tr class="opened">
								<td class="day_label">Location :</td>
								<td class="day_value">${userData.country}</td>
							</tr>
							<tr class="opened">
								<td class="day_label">Education :</td>
								<td class="day_value closed"><span>${userData.higherEducation}</span></td>
							</tr>
						</tbody>
					</table>
				</div>
				</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col_4">
				<div class="bs-example bs-example-tabs" role="tabpanel"
					data-example-id="togglable-tabs">
					<ul id="myTab" class="nav nav-tabs nav-tabs1" role="tablist">
						<li role="presentation" class="active"><a href="#home"
							id="home-tab" role="tab" data-toggle="tab" aria-controls="home"
							aria-expanded="true">About Myself</a></li>
						<li role="presentation"><a href="#profile" role="tab"
							id="profile-tab" data-toggle="tab" aria-controls="profile">Family
								Details</a></li>
						<li role="presentation"><a href="#profile1" role="tab"
							id="profile-tab1" data-toggle="tab" aria-controls="profile1">Partner
								Preference</a></li>
						<li role="presentation"><a href="Edit.jsp" role="tab"
							id="profile-tab" data-toggle="tab" aria-controls="profile">Edit
								Profile</a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="home"
							aria-labelledby="home-tab">
							<div class="basic_1">
								<h3>Basics & Lifestyle</h3>
								<div class="col-md-6 basic_1-left">
									<table class="table_working_hours">
										<tbody>
											<tr class="opened_1">
												<td class="day_label">First Name :</td>
												<td class="day_value">${userData.firstName}</td>
											</tr>
											<tr class="opened_1">
												<td class="day_label">Last Name :</td>
												<td class="day_value">${userData.lastName}</td>
											</tr>
											<tr class="opened_1">
												<td class="day_label">Body Type :</td>
												<td class="day_value">${userData.bodyType}</td>
											</tr>
											<tr class="opened_1">
												<td class="day_label">Marital Status :</td>
												<td class="day_value">${userData.maritalStatus}</td>
											</tr>
											<tr class="opened_1">
												<td class="day_label">Weight :</td>
												<td class="day_value">${userData.weight}</td>
											</tr>
											<tr class="opened_1">
												<td class="day_label">Height :</td>
												<td class="day_value">${userData.height}</td>
											</tr>
											<tr class="opened_1">
												<td class="day_label">Drink :</td>
												<td class="day_value closed"><span>${userData.drinkingHabit}</span></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="col-md-6 basic_1-left">
									<table class="table_working_hours">
										<tbody>
											<tr class="opened_1">
												<td class="day_label">Age :</td>
												<td class="day_value">${userData.age}</td>
											</tr>
											<tr class="opened">
												<td class="day_label">Mother Tongue :</td>
												<td class="day_value">${userData.motherTongue}</td>
											</tr>
											<tr class="closed">
												<td class="day_label">Diet :</td>
												<td class="day_value closed"><span>${userData.eatingHabit}</span></td>
											</tr>
											<tr class="closed">
												<td class="day_label">Smoke :</td>
												<td class="day_value closed"><span>${userData.smokingHabit}</span></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="basic_1">
								<h3>Religious / Social Background</h3>
								<div class="col-md-6 basic_1-left">
									<table class="table_working_hours">
										<tbody>
											<tr class="opened">
												<td class="day_label">Date of Birth :</td>
												<td class="day_value">${userData.dob}</td>
											</tr>
											<tr class="opened">
												<td class="day_label">Caste :</td>
												<td class="day_value">${userData.caste}</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="col-md-6 basic_1-left">
									<table class="table_working_hours">
										<tbody>
											<tr class="opened_1">
												<td class="day_label">Religion :</td>
												<td class="day_value">${userData.religion}</td>
											</tr>
											<tr class="opened">
												<td class="day_label">Sub Caste :</td>
												<td class="day_value">${userData.subCaste}</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="basic_1 basic_2">
								<h3>Education & Career</h3>
								<div class="basic_1-left">
									<table class="table_working_hours">
										<tbody>
											<tr class="opened">
												<td class="day_label">Education :</td>
												<td class="day_value">${userData.higherEducation}</td>
											</tr>
											<tr class="opened">
												<td class="day_label">Education Detail :</td>
												<td class="day_value">${userData.educationInDetail}</td>
											</tr>
											<tr class="opened">
												<td class="day_label">Occupation Detail :</td>
												<td class="day_value closed"><span>${userData.occupationInDetail}</span></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Annual Income :</td>
												<td class="day_value closed"><span>Rs.
														${userData.annualIncome}</span></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="profile"
							aria-labelledby="profile-tab">
							<div class="basic_3">
								<h4>Family Details</h4>
								<div class="basic_1 basic_2">
									<h3>Basics</h3>
									<div class="col-md-6 basic_1-left">
										<table class="table_working_hours">
											<tbody>
												<tr class="opened">
													<td class="day_label">Father's Occupation :</td>
													<td class="day_value">${userData.fatherStatus}</td>
												</tr>
												<tr class="opened">
													<td class="day_label">Mother's Occupation :</td>
													<td class="day_value">${userData.motherStatus}</td>
												</tr>
												<tr class="opened">
													<td class="day_label">No. of Brothers :</td>
													<td class="day_value closed"><span>${userData.noOfBros}</span></td>
												</tr>
												<tr class="opened">
													<td class="day_label">Brother Status:</td>
													<td class="day_value closed"><span>${userData.broStatus}</span></td>
												</tr>
												<tr class="opened">
													<td class="day_label">No. of Sisters :</td>
													<td class="day_value closed"><span>${userData.noOfSis}</span></td>
												</tr>
												<tr class="opened">
													<td class="day_label">Sister Status :</td>
													<td class="day_value closed"><span>${userData.sisStatus}</span></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!--  <%%>-->
						<div role="tabpanel" class="tab-pane fade" id="profile1"
							aria-labelledby="profile-tab1">
							<div class="basic_1 basic_2">
								<div class="basic_1-left">
									<table class="table_working_hours">
										<tbody>
											<tr class="opened">
												<td class="day_label">Age :</td>
												<td class="day_value">28 to 35</td>
											</tr>
											<tr class="opened">
												<td class="day_label">WISE Matrimony Status :</td>
												<td class="day_value">Single</td>
											</tr>
											<tr class="opened">
												<td class="day_label">Body Type :</td>
												<td class="day_value closed"><span>Doesn't
														matter</span></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Complexion :</td>
												<td class="day_value closed"><span>Doesn't
														matter</span></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Height 5ft 9 in / 175cm :</td>
												<td class="day_value closed"><span>Doesn't
														matter</span></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Diet :</td>
												<td class="day_value closed"><span>Doesn't
														matter</span></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Religion :</td>
												<td class="day_value closed"><span>Doesn't
														matter</span></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Caste :</td>
												<td class="day_value closed"><span>Doesn't
														matter</span></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Mother Tongue :</td>
												<td class="day_value closed"><span>Doesn't
														matter</span></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Education :</td>
												<td class="day_value closed"><span>Doesn't
														matter</span></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Occupation :</td>
												<td class="day_value closed"><span>Doesn't
														matter</span></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Country of Residence :</td>
												<td class="day_value closed"><span>Doesn't
														matter</span></td>
											</tr>
											<tr class="opened">
												<td class="day_label">State :</td>
												<td class="day_value closed"><span>Doesn't
														matter</span></td>
											</tr>
											<tr class="opened">
												<td class="day_label">Residency Status :</td>
												<td class="day_value closed"><span>Doesn't
														matter</span></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4 profile_right">
			<div class="newsletter">
				<form action="getUserById" method="POST">
					<input type="text" name="ne" size="30" required=""
						placeholder="Enter Profile ID :"> <input type="submit"
						value="Go">
				</form>
			</div>
			<div class="view_profile">
				<h3>View Similar Profiles</h3>
				<c:if ${userData.gender} = "female">
				<c:forEach var="data" items="${maleUsers}">
					<ul class="profile_item">
					<a href="#">
						<li class="profile_item-img"><img src="images/p5.jpg"
							class="img-responsive" alt="">
						</li>
						<li class="profile_item-desc">
							<h4>${data.getUserId()}</h4>
							<p>29 Yrs, 5Ft 5in Christian</p>
							<h5>View Full Profile</h5>
						</li>
						<div class="clearfix"></div>
					</a>
				</ul>
				</c:forEach>
				</c:if>
				<c:else>
					<c:forEach var="data" items="${femaleUsers}">
					<ul class="profile_item">
					<a href="#">
						<li class="profile_item-img"><img src="images/p5.jpg"
							class="img-responsive" alt="">
						</li>
						<li class="profile_item-desc">
							<h4>${data.getUserId()}</h4>
							<p>29 Yrs, 5Ft 5in Christian</p>
							<h5>View Full Profile</h5>
						</li>
						<div class="clearfix"></div>
					</a>
				</ul>
				</c:forEach>
				</c:else>
				
				
				
				
				
				
				
				
				<!--   <ul class="profile_item">
					<a href="#">
						<li class="profile_item-img"><img src="images/p6.jpg"
							class="img-responsive" alt="" /></li>
						<li class="profile_item-desc">
							<h4>2458741</h4>
							<p>29 Yrs, 5Ft 5in Christian</p>
							<h5>View Full Profile</h5>
					</li>
						<div class="clearfix"></div>
					</a>
				</ul>
				<ul class="profile_item">
					<a href="#">
						<li class="profile_item-img"><img src="images/p7.jpg"
							class="img-responsive" alt="" /></li>
						<li class="profile_item-desc">
							<h4>2458741</h4>
							<p>29 Yrs, 5Ft 5in Christian</p>
							<h5>View Full Profile</h5>
					</li>
						<div class="clearfix"></div>
					</a>
				</ul>
				<ul class="profile_item">
					<a href="#">
						<li class="profile_item-img"><img src="images/p8.jpg"
							class="img-responsive" alt="" /></li>
						<li class="profile_item-desc">
							<h4>2458741</h4>
							<p>29 Yrs, 5Ft 5in Christian</p>
							<h5>View Full Profile</h5>
					</li>
						<div class="clearfix"></div>
					</a>
				</ul>
			</div>
			</a>
			</ul>
			<ul class="profile_item">
				<a href="#">
					<li class="profile_item-img"><img src="images/p10.jpg"
						class="img-responsive" alt="" /></li>
					<li class="profile_item-desc">
						<h4>2458741</h4>
						<p>29 Yrs, 5Ft 5in Christian</p>
						<h5>View Full Profile</h5>
				</li>
					<div class="clearfix"></div>
				</a>
			</ul>
			<ul class="profile_item">
				<a href="#">
					<li class="profile_item-img"><img src="images/p11.jpg"
						class="img-responsive" alt="" /></li>
					<li class="profile_item-desc">
						<h4>2458741</h4>
						<p>29 Yrs, 5Ft 5in Christian</p>
						<h5>View Full Profile</h5>
				</li>
					<div class="clearfix"></div>
				</a>
			</ul>
			<ul class="profile_item">
				<a href="#">
					<li class="profile_item-img"><img src="images/p12.jpg"
						class="img-responsive" alt="" /></li>
					<li class="profile_item-desc">
						<h4>2458741</h4>
						<p>29 Yrs, 5Ft 5in Christian</p>
						<h5>View Full Profile</h5>
				</li>
					<div class="clearfix"></div>
				</a>
			</ul> -->
		</div>
	</div>
	<div class="clearfix"></div>
	</div>
	</div>
	</div>
	<!-- FlexSlider -->
	<script defer src="js/jquery.flexslider.js"></script>
	<link rel="stylesheet" href="css/flexslider.css" type="text/css"
		media="screen" />
	<script>
		// Can also be used with $(document).ready()
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				controlNav : "thumbnails"
			});
		});
	</script>
</body>
</html>
