
<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Astro v5.9.2">
<title>Signin Template · Bootstrap v5.3</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.3/examples/sign-in/">
<script src="js/color-modes.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr"
	crossorigin="anonymous">
<link rel="icon" href="images/Alokesh-logo.png" sizes="32x32"
	type="image/png">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">

<link rel="mask-icon"
	href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg"
	color="#712cf9">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">
<link href="css/sign-in.css" rel="stylesheet">
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem
	}
}

.b-example-divider {
	width: 100%;
	height: 3rem;
	background-color: #0000001a;
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em #0000001a, inset 0 .125em .5em #00000026
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh
}

.bi {
	vertical-align: -.125em;
	fill: currentColor
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch
}

.btn-bd-primary {
	--bd-violet-bg: #712cf9;
	--bd-violet-rgb: 112.520718, 44.062154, 249.437846;
	--bs-btn-font-weight: 600;
	--bs-btn-color: var(--bs-white);
	--bs-btn-bg: var(--bd-violet-bg);
	--bs-btn-border-color: var(--bd-violet-bg);
	--bs-btn-hover-color: var(--bs-white);
	--bs-btn-hover-bg: #6528e0;
	--bs-btn-hover-border-color: #6528e0;
	--bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
	--bs-btn-active-color: var(--bs-btn-hover-color);
	--bs-btn-active-bg: #5a23c8;
	--bs-btn-active-border-color: #5a23c8
}

.bd-mode-toggle {
	z-index: 1500
}

.bd-mode-toggle .bi {
	width: 1em;
	height: 1em
}

.bd-mode-toggle .dropdown-menu .active .bi {
	display: block !important
}
</style>
</head>
<body class="d-flex align-items-center py-4 bg-body-tertiary">
	<svg xmlns="http://www.w3.org/2000/svg" class="d-none"> <symbol
			id="check2" viewBox="0 0 16 16"> <path
			d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"></path> </symbol> <symbol
			id="circle-half" viewBox="0 0 16 16"> <path
			d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"></path> </symbol> <symbol
			id="moon-stars-fill" viewBox="0 0 16 16"> <path
			d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"></path> <path
			d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"></path> </symbol> <symbol
			id="sun-fill" viewBox="0 0 16 16"> <path
			d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"></path> </symbol> </svg>
	<div
		class="dropdown position-fixed bottom-0 end-0 mb-3 me-3 bd-mode-toggle">
		<button
			class="btn btn-bd-primary py-2 dropdown-toggle d-flex align-items-center"
			id="bd-theme" type="button" aria-expanded="false"
			data-bs-toggle="dropdown" aria-label="Toggle theme (auto)">
			<svg class="bi my-1 theme-icon-active" aria-hidden="true">
				<use href="#circle-half"></use></svg>
			<span class="visually-hidden" id="bd-theme-text">Toggle theme</span>
		</button>
		<ul class="dropdown-menu dropdown-menu-end shadow"
			aria-labelledby="bd-theme-text">
			<li>
				<button type="button"
					class="dropdown-item d-flex align-items-center"
					data-bs-theme-value="light" aria-pressed="false">
					<svg class="bi me-2 opacity-50" aria-hidden="true">
						<use href="#sun-fill"></use></svg>
					Light
					<svg class="bi ms-auto d-none" aria-hidden="true">
						<use href="#check2"></use></svg>
				</button>
			</li>
			<li>
				<button type="button"
					class="dropdown-item d-flex align-items-center"
					data-bs-theme-value="dark" aria-pressed="false">
					<svg class="bi me-2 opacity-50" aria-hidden="true">
						<use href="#moon-stars-fill"></use></svg>
					Dark
					<svg class="bi ms-auto d-none" aria-hidden="true">
						<use href="#check2"></use></svg>
				</button>
			</li>
			<li>
				<button type="button"
					class="dropdown-item d-flex align-items-center active"
					data-bs-theme-value="auto" aria-pressed="true">
					<svg class="bi me-2 opacity-50" aria-hidden="true">
						<use href="#circle-half"></use></svg>
					Auto
					<svg class="bi ms-auto d-none" aria-hidden="true">
						<use href="#check2"></use></svg>
				</button>
			</li>
		</ul>
	</div>
				<main class="container mt-5 mb-5"><br><br><br>
					<form action="AddEmployee" method="post">
						<div class="text-center mb-4">
							<img src="images/Alokesh-logo.png" alt="Logo" width="72"
								height="57">
							<h1 class="h3 fw-bold">Add New Employee</h1>
						</div>

						<div class="row g-3">
							<!-- Name -->
							<div class="col-md-6">
								<div class="form-floating">
									<input name="name" type="text" class="form-control"
										id="floatingName" placeholder="John Doe" required> <label
										for="floatingName">Full Name</label>
								</div>
							</div>

							<!-- Gender -->
							<div class="col-md-6">
								<div class="form-floating">
									<select name="gender" class="form-select" id="floatingGender"
										required>
										<option value="" disabled selected>Select Gender</option>
										<option value="Male">Male</option>
										<option value="Female">Female</option>
										<option value="Other">Other</option>
									</select> <label for="floatingGender">Gender</label>
								</div>
							</div>

							<!-- DOB -->
							<div class="col-md-6">
								<div class="form-floating">
									<input name="dob" type="date" class="form-control"
										id="floatingDOB" required> <label for="floatingDOB">Date
										of Birth</label>
								</div>
							</div>

							<!-- Phone Number -->
							<div class="col-md-6">
								<div class="form-floating">
									<input name="phone" type="tel" class="form-control"
										id="floatingPhone" placeholder="+91-9876543210" required>
									<label for="floatingPhone">Phone Number</label>
								</div>
							</div>

							<!-- Department -->
							<div class="col-md-6">
								<div class="form-floating">
									<input name="department" type="text" class="form-control"
										id="floatingDepartment" placeholder="IT" required> <label
										for="floatingDepartment">Department</label>
								</div>
							</div>

							<!-- Job Title -->
							<div class="col-md-6">
								<div class="form-floating">
									<input name="jobTitle" type="text" class="form-control"
										id="floatingJobTitle" placeholder="Software Engineer" required>
									<label for="floatingJobTitle">Job Title</label>
								</div>
							</div>

							<!-- Manager Info -->
							<div class="col-md-6">
								<div class="form-floating">
									<input name="managerInfo" type="text" class="form-control"
										id="floatingManager" placeholder="John (MGR1012)" required>
									<label for="floatingManager">Manager Appointed (ID)</label>
								</div>
							</div>

							<!-- Hiring Date -->
							<div class="col-md-6">
								<div class="form-floating">
									<input name="hiringDate" type="date" class="form-control"
										id="floatingHireDate" required> <label
										for="floatingHireDate">Hiring Date</label>
								</div>
							</div>

							<!-- Employee Type -->
							<div class="col-md-6">
								<div class="form-floating">
									<select name="empType" class="form-select" id="floatingEmpType"
										required>
										<option value="" disabled selected>Select Type</option>
										<option value="Full-time">Full-time</option>
										<option value="Part-time">Part-time</option>
										<option value="Intern">Intern</option>
										<option value="Contract">Contract</option>
									</select> <label for="floatingEmpType">Employee Type</label>
								</div>
							</div>

							<!-- Benefits -->
							<div class="col-md-6">
								<div class="form-floating">
									<input name="benefits" type="text" class="form-control"
										id="floatingBenefits" placeholder="Medical, Dental..."
										required> <label for="floatingBenefits">Benefits</label>
								</div>
							</div>

							<!-- Working Hours -->
							<div class="col-md-6">
								<label class="form-label">Working Hours</label>
								<div class="input-group">
									<input name="workingFrom" type="time" class="form-control"
										required> <span class="input-group-text">to</span> <input
										name="workingTo" type="time" class="form-control" required>
								</div>
							</div>

							<!-- Email -->
							<div class="col-md-6">
								<div class="form-floating">
									<input name="emailAddress" type="email" class="form-control"
										id="floatingInput" placeholder="name@example.com"> <label
										for="floatingInput">Email Address</label>
								</div>
							</div>
						</div>

						<hr class="my-4">

						<!-- Emergency Contacts -->
						<h5 class="mb-3 mt-3">Emergency Contacts</h5>
						<div id="emergencyContacts">
							<div class="row g-3 mb-2 emergency-contact">
								<div class="col-md-6">
									<div class="form-floating">
										<input name="emergencyPhone" type="tel" class="form-control"
											placeholder="Phone" required> <label>Emergency
											Contact Phone</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-floating">
										<input name="emergencyName" type="text" class="form-control"
											placeholder="Name" required> <label>Emergency
											Contact Name</label>
									</div>
								</div>
							</div>
						</div>

						<div class="mb-3">
							<button type="button" class="btn btn-sm btn-outline-secondary"
								onclick="addEmergencyContact()">Add Another Contact</button>
						</div>

						<div class="mt-4">
							<button class="btn btn-primary w-100 py-2" type="submit">Add
								Employee</button>
						</div>

						<p class="mt-4 mb-2 text-body-secondary text-center">&copy;
							2017–2025</p>
					</form>
				</main>

				<script>
  function addEmergencyContact() {
    const container = document.getElementById('emergencyContacts');
    const div = document.createElement('div');
    div.className = 'row g-3 mb-2 emergency-contact';
    div.innerHTML = `
      <div class="col-md-6">
        <div class="form-floating">
          <input name="emergencyPhone" type="tel" class="form-control" placeholder="Phone" required>
          <label>Emergency Contact Phone</label>
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-floating">
          <input name="emergencyName" type="text" class="form-control" placeholder="Name" required>
          <label>Emergency Contact Name</label>
        </div>
      </div>
    `;
    container.appendChild(div);
  }
</script>

			</main>
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q"
				crossorigin="anonymous"></script>
</body>
</html>