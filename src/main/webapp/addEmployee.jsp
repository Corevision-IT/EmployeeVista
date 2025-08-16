
<main class="container mt-5 mb-5">
	<br>
	<br>
	<br>
	<form action="AddEmployee" method="post">
		<div class="text-center mb-4">
			<img src="images/Alokesh-logo.png" alt="Logo" width="72" height="57">
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
					<input name="dob" type="date" class="form-control" id="floatingDOB"
						required> <label for="floatingDOB">Date of Birth</label>
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
						id="floatingBenefits" placeholder="Medical, Dental..." required>
					<label for="floatingBenefits">Benefits</label>
				</div>
			</div>

			<!-- Working Hours -->
			<div class="col-md-6">
				<label class="form-label">Working Hours</label>
				<div class="input-group">
					<input name="workingFrom" type="time" class="form-control" required>
					<span class="input-group-text">to</span> <input name="workingTo"
						type="time" class="form-control" required>
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