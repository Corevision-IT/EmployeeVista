<%@ page import="empvista.entities.Department"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.ListIterator"%>
<%
ArrayList deptist = (ArrayList) request.getAttribute("DEPTLIST");
ListIterator<Department> listIteratorDept = deptist.listIterator();
%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<div class="main-panel">
	<div class="content-wrapper">
		<div class="page-header">


			<main class="container mt-5 mb-5">
				<h3 class="page-title">
					<span class="page-title-icon bg-gradient-primary text-white me-2">
						<i class="mdi mdi-home"></i>
					</span> Add Employees
				</h3>
				<br> <br>
				<div class="table-responsive"
					style="overflow-y: auto; height: 450px;">
					<form action="AddEmployee" method="post">


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
									<select name="gender" class="form-select" id="floatingGender"
										required onchange="loadManagers(this.value)">
										<option value="" disabled selected>Select Department</option>
										<%
										while (listIteratorDept.hasNext()) {
											Department dept = listIteratorDept.next();
											int deptId = dept.getDepartmentID();
											String deptName = dept.getDepartment();
										%>
										<option value="<%=deptId%>"><%=deptName%></option>
										<%
										}
										%>

									</select> <label for="floatingGender">Departments</label>
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
								<div class="form-floating" id="managerList">
									<select name="manager" class="form-select" id="floatingManager"
										required>
										<option value="" disabled selected>Select Manager A Manager</option>
									</select> <label for="floatingManager">Manager Name</label>
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
							<!-- Email -->
							<div class="col-md-6">
								<div class="form-floating">
									<input name="emailAddress" type="email" class="form-control"
										id="floatingInput" placeholder="name@example.com"> <label
										for="floatingInput">Email Address</label>
								</div>
							</div>
							<div class="col-md-6">
								<label class="form-label d-block">Working Hours</label>
								<div class="d-flex gap-2">
									<div class="form-floating flex-fill">
										<input name="workingFrom" type="time" class="form-control"
											id="workingFrom" required> <label for="workingFrom">From</label>
									</div>
									<div class="form-floating flex-fill">
										<input name="workingTo" type="time" class="form-control"
											id="workingTo" required> <label for="workingTo">To</label>
									</div>
								</div>
							</div>


						</div>
						<!-- Certifications Section -->
						<hr class="my-4">
						<h5 class="mb-3 mt-3">Certifications</h5>
						<div id="certifications">
							<div class="row g-3 mb-2 certification">
								<div class="col-md-4">
									<div class="form-floating">
										<input name="certificateName" type="text" class="form-control"
											placeholder="Certificate Name" required> <label>Certificate
											Name</label>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-floating">
										<input name="certificateAuthority" type="text"
											class="form-control" placeholder="Issued By" required>
										<label>Certificate Authority</label>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-floating">
										<input name="certificateYear" type="number"
											class="form-control" placeholder="2023" min="1900" max="2099"
											required> <label>Year</label>
									</div>
								</div>
							</div>
						</div>
						<div class="mb-3">
							<button type="button" class="btn btn-sm btn-outline-secondary"
								onclick="addCertification()">Add Another Certification</button>
						</div>

						<!-- Skills Section -->
						<hr class="my-4">
						<h5 class="mb-3 mt-3">Skills</h5>
						<div id="skills">
							<div class="row g-3 mb-2 skill">
								<div class="col-md-6">
									<div class="form-floating">
										<input name="skillName" type="text" class="form-control"
											placeholder="Skill Name" required> <label>Skill
											Name</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-floating">
										<select name="proficiency" class="form-select" required>
											<option value="" disabled selected>Select
												Proficiency</option>
											<option value="Beginner">Beginner</option>
											<option value="Intermediate">Intermediate</option>
											<option value="Advanced">Advanced</option>
											<option value="Expert">Expert</option>
										</select> <label>Proficiency Level</label>
									</div>
								</div>
							</div>
						</div>
						<div class="mb-3">
							<button type="button" class="btn btn-sm btn-outline-secondary"
								onclick="addSkill()">Add Another Skill</button>
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


					</form>
			</main>
		</div>
	</div>
</div>
</div>


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
  function addCertification() {
	    const container = document.getElementById('certifications');
	    const div = document.createElement('div');
	    div.className = 'row g-3 mb-2 certification';
	    div.innerHTML = `
	      <div class="col-md-4">
	        <div class="form-floating">
	          <input name="certificateName" type="text" class="form-control" placeholder="Certificate Name" required>
	          <label>Certificate Name</label>
	        </div>
	      </div>
	      <div class="col-md-4">
	        <div class="form-floating">
	          <input name="certificateAuthority" type="text" class="form-control" placeholder="Issued By" required>
	          <label>Certificate Authority</label>
	        </div>
	      </div>
	      <div class="col-md-4">
	        <div class="form-floating">
	          <input name="certificateYear" type="number" class="form-control" placeholder="2023" min="1900" max="2099" required>
	          <label>Year</label>
	        </div>
	      </div>
	    `;
	    container.appendChild(div);
	  }

	  function addSkill() {
	    const container = document.getElementById('skills');
	    const div = document.createElement('div');
	    div.className = 'row g-3 mb-2 skill';
	    div.innerHTML = `
	      <div class="col-md-6">
	        <div class="form-floating">
	          <input name="skillName" type="text" class="form-control" placeholder="Skill Name" required>
	          <label>Skill Name</label>
	        </div>
	      </div>
	      <div class="col-md-6">
	        <div class="form-floating">
	          <select name="proficiency" class="form-select" required>
	            <option value="" disabled selected>Select Proficiency</option>
	            <option value="Beginner">Beginner</option>
	            <option value="Intermediate">Intermediate</option>
	            <option value="Advanced">Advanced</option>
	            <option value="Expert">Expert</option>
	          </select>
	          <label>Proficiency Level</label>
	        </div>
	      </div>
	    `;
	    container.appendChild(div);
	  }
	  
	  function loadManagers(deptId)
	  {
		alert("Loading departments for: "+deptId );

		 //$("#managerList").load('managerList.jsp');
		 
		 //AJAX - asynchronous java script 
		 
		$.ajax({
            url: 'LoadManagers', // The URL pattern of your servlet
            type: 'GET', 
            data: { deptId: deptId }, // Optional: send data to servlet
            success: function(response){
                $('#managerList').html(response); // Inject the JSP fragment into the div
            },
            error: function(xhr, status, error){
                console.error("Error loading JSP fragment:", error); 
            }
        });
	  }
	  
</script>

</main>