<!DOCTYPE html>
<!--we need to capture the user object sent from backend servlet
	we will use jsp scriptlet
-->
<%@ page import="empvista.entities.User"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.ListIterator"%>
<%@ page import="empvista.entities.Menu"%>
<%@ page import="empvista.entities.CustomMessage"%>
<%
User user = (User) request.getSession().getAttribute("USER"); // type casting
String userName = user.getUserName();
String profilePic = user.getProfilePicName();
String roleName = user.getRoleName();
ArrayList menuList = (ArrayList) request.getSession().getAttribute("MenuList");
ListIterator<Menu> listIteratorMenu = menuList.listIterator();
CustomMessage customMessage = (CustomMessage) request.getAttribute("UserMessage");
String msg = "";
if (customMessage != null) {
	msg = customMessage.getUserMessage();
}
%>



<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Purple Admin</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="assets/vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="assets/vendors/font-awesome/css/font-awesome.min.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<link rel="stylesheet"
	href="assets/vendors/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<!-- endinject -->
<!-- Layout styles -->
<link rel="stylesheet" href="assets/css/style.css">
<!-- End layout styles -->
<link rel="shortcut icon" href="assets/images/favicon.png" />
</head>
<body onload="showMessage('<%=msg%>')">
	<div class="container-scroller">
		<div class="row p-0 m-0 proBanner" id="proBanner">
			<div class="col-md-12 p-0 m-0">
				<div
					class="card-body card-body-padding d-flex align-items-center justify-content-between">
					<div class="ps-lg-3">
						<div class="d-flex align-items-center justify-content-between">
							<p class="mb-0 font-weight-medium me-3 buy-now-text">Free
								24/7 customer support, updates, and more with this template!</p>
							<a
								href="https://www.bootstrapdash.com/product/purple-bootstrap-admin-template/"
								target="_blank" class="btn me-2 buy-now-btn border-0">Buy
								Now</a>
						</div>
					</div>
					<div class="d-flex align-items-center justify-content-between">
						<a
							href="https://www.bootstrapdash.com/product/purple-bootstrap-admin-template/"><i
							class="mdi mdi-home me-3 text-white"></i></a>
						<button id="bannerClose" class="btn border-0 p-0">
							<i class="mdi mdi-close text-white mr-0"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- partial:partials/_navbar.html -->
		<nav
			class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
			<div
				class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
				<a class="navbar-brand brand-logo" href="index.html"><img
					src="assets/images/logo.svg" alt="logo" /></a> <a
					class="navbar-brand brand-logo-mini" href="index.html"><img
					src="assets/images/logo-mini.svg" alt="logo" /></a>
			</div>
			<div class="navbar-menu-wrapper d-flex align-items-stretch">
				<button class="navbar-toggler navbar-toggler align-self-center"
					type="button" data-toggle="minimize">
					<span class="mdi mdi-menu"></span>
				</button>
				<div class="search-field d-none d-md-block">
					<form class="d-flex align-items-center h-100" action="#">
						<div class="input-group">
							<div class="input-group-prepend bg-transparent">
								<i class="input-group-text border-0 mdi mdi-magnify"></i>
							</div>
							<input type="text" class="form-control bg-transparent border-0"
								placeholder="Search projects">
						</div>
					</form>
				</div>
				<ul class="navbar-nav navbar-nav-right">
					<li class="nav-item nav-profile dropdown"><a
						class="nav-link dropdown-toggle" id="profileDropdown" href="#"
						data-bs-toggle="dropdown" aria-expanded="false">
							<div class="nav-profile-img">
								<img src="assets/images/faces/<%=profilePic%>" alt="image">
								<span class="availability-status online"></span>
							</div>
							<div class="nav-profile-text">
								<p class="mb-1 text-black"><%=userName%></p>
							</div>
					</a>
						<div class="dropdown-menu navbar-dropdown"
							aria-labelledby="profileDropdown">
							<a class="dropdown-item" href="#"> <i
								class="mdi mdi-cached me-2 text-success"></i> Activity Log
							</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="Logout"> <i
								class="mdi mdi-logout me-2 text-primary"></i> Signout
							</a>
						</div></li>
					<li class="nav-item d-none d-lg-block full-screen-link"><a
						class="nav-link"> <i class="mdi mdi-fullscreen"
							id="fullscreen-button"></i>
					</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link count-indicator dropdown-toggle"
						id="messageDropdown" href="#" data-bs-toggle="dropdown"
						aria-expanded="false"> <i class="mdi mdi-email-outline"></i> <span
							class="count-symbol bg-warning"></span>
					</a>
						<div
							class="dropdown-menu dropdown-menu-end navbar-dropdown preview-list"
							aria-labelledby="messageDropdown">
							<h6 class="p-3 mb-0">Messages</h6>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<img src="assets/images/faces/face4.jpg" alt="image"
										class="profile-pic">
								</div>
								<div
									class="preview-item-content d-flex align-items-start flex-column justify-content-center">
									<h6 class="preview-subject ellipsis mb-1 font-weight-normal">Mark
										send you a message</h6>
									<p class="text-gray mb-0">1 Minutes ago</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<img src="assets/images/faces/face2.jpg" alt="image"
										class="profile-pic">
								</div>
								<div
									class="preview-item-content d-flex align-items-start flex-column justify-content-center">
									<h6 class="preview-subject ellipsis mb-1 font-weight-normal">Cregh
										send you a message</h6>
									<p class="text-gray mb-0">15 Minutes ago</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<img src="assets/images/faces/face3.jpg" alt="image"
										class="profile-pic">
								</div>
								<div
									class="preview-item-content d-flex align-items-start flex-column justify-content-center">
									<h6 class="preview-subject ellipsis mb-1 font-weight-normal">Profile
										picture updated</h6>
									<p class="text-gray mb-0">18 Minutes ago</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
							<h6 class="p-3 mb-0 text-center">4 new messages</h6>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link count-indicator dropdown-toggle"
						id="notificationDropdown" href="#" data-bs-toggle="dropdown">
							<i class="mdi mdi-bell-outline"></i> <span
							class="count-symbol bg-danger"></span>
					</a>
						<div
							class="dropdown-menu dropdown-menu-end navbar-dropdown preview-list"
							aria-labelledby="notificationDropdown">
							<h6 class="p-3 mb-0">Notifications</h6>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-success">
										<i class="mdi mdi-calendar"></i>
									</div>
								</div>
								<div
									class="preview-item-content d-flex align-items-start flex-column justify-content-center">
									<h6 class="preview-subject font-weight-normal mb-1">Event
										today</h6>
									<p class="text-gray ellipsis mb-0">Just a reminder that you
										have an event today</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-warning">
										<i class="mdi mdi-cog"></i>
									</div>
								</div>
								<div
									class="preview-item-content d-flex align-items-start flex-column justify-content-center">
									<h6 class="preview-subject font-weight-normal mb-1">Settings</h6>
									<p class="text-gray ellipsis mb-0">Update dashboard</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-info">
										<i class="mdi mdi-link-variant"></i>
									</div>
								</div>
								<div
									class="preview-item-content d-flex align-items-start flex-column justify-content-center">
									<h6 class="preview-subject font-weight-normal mb-1">Launch
										Admin</h6>
									<p class="text-gray ellipsis mb-0">New admin wow!</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
							<h6 class="p-3 mb-0 text-center">See all notifications</h6>
						</div></li>
					<li class="nav-item nav-logout d-none d-lg-block"><a
						class="nav-link" href="#"> <i class="mdi mdi-power"></i>
					</a></li>
					<li class="nav-item nav-settings d-none d-lg-block"><a
						class="nav-link" href="#"> <i
							class="mdi mdi-format-line-spacing"></i>
					</a></li>
				</ul>
				<button
					class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
					type="button" data-toggle="offcanvas">
					<span class="mdi mdi-menu"></span>
				</button>
			</div>
		</nav>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->
			<!-- include menu.jsp -->
			<%@ include file="menu.jsp"%>
			<!-- end of menu.jsp -->
			<!-- partial -->
			<%@ include file="addEmployee.jsp"%>


		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="assets/vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<script src="assets/vendors/chart.js/chart.umd.js"></script>
	<script
		src="assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="assets/js/off-canvas.js"></script>
	<script src="assets/js/misc.js"></script>
	<script src="assets/js/settings.js"></script>
	<script src="assets/js/todolist.js"></script>
	<script src="assets/js/jquery.cookie.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page -->
	<script src="assets/js/dashboard.js"></script>
	<!-- End custom js for this page -->

	<!-- Custom Confirm Modal -->
	<div id="customConfirm" class="custom-confirm-overlay">
		<div class="custom-confirm-box">
			<h3>Are you sure? </h3>
			<p>This action cannot be undone. Do you really want to continue?</p>
			<div class="custom-confirm-actions">
				<button id="confirmYes">Yes</button>
				<button id="confirmNo">Cancel</button>
			</div>
		</div>
	</div>

	<style>
.custom-confirm-overlay {
	display: none;
	position: fixed;
	inset: 0;
	background: rgba(0, 0, 0, 0.6);
	backdrop-filter: blur(3px);
	justify-content: center;
	align-items: center;
	z-index: 9999;
}

.custom-confirm-box {
	background: #fff;
	padding: 20px 25px;
	border-radius: 12px;
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.25);
	width: 350px;
	max-width: 90%;
	text-align: center;
	font-family: "Segoe UI", sans-serif;
	animation: popUp 0.3s ease-out;
}

.custom-confirm-box h3 {
	margin-bottom: 10px;
	color: #333;
}

.custom-confirm-box p {
	font-size: 14px;
	margin-bottom: 20px;
	color: #666;
}

.custom-confirm-actions {
	display: flex;
	justify-content: space-evenly;
}

.custom-confirm-actions button {
	padding: 8px 18px;
	border-radius: 8px;
	border: none;
	font-size: 14px;
	cursor: pointer;
	transition: 0.3s;
}

#confirmYes {
	background: #28a745;
	color: #fff;
}

#confirmYes:hover {
	background: #218838;
}

#confirmNo {
	background: #dc3545;
	color: #fff;
}

#confirmNo:hover {
	background: #c82333;
}

@
keyframes popUp {from { transform:scale(0.8);
	opacity: 0;
}

to {
	transform: scale(1);
	opacity: 1;
}
}
</style>

	<script>
  // Override default confirm
  function customConfirm(message, callback) {
    const overlay = document.getElementById("customConfirm");
    overlay.querySelector("p").innerText = message;
    overlay.style.display = "flex";

    const yesBtn = document.getElementById("confirmYes");
    const noBtn = document.getElementById("confirmNo");

    yesBtn.onclick = () => {
      overlay.style.display = "none";
      callback(true);
    };
    noBtn.onclick = () => {
      overlay.style.display = "none";
      callback(false);
    };
  }

  // Example: replace your confirm() calls
  function validateForm() {
    customConfirm("Do you really want to submit this Employee form? ", function(result) {
      if (result) {
        document.getElementById("employeeForm").submit();
      } else {
        console.log("Submission cancelled ❌");
      }
    });
    return false; // prevent default submit until confirm
  }
</script>


</body>
</html>