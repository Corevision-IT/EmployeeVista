<%@ page import="empvista.entities.Department"%>
<%@ page import="empvista.entities.Job_Types"%>
<%@ page import="empvista.entities.Job_titles"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.ListIterator"%>

<%
ArrayList deptist = (ArrayList) request.getAttribute("DEPTLIST");
ListIterator<Department> listIteratorDept = deptist.listIterator();
ArrayList jtitleList = (ArrayList) request.getAttribute("TITLELIST");
ListIterator<Job_titles> listIteratortitle = jtitleList.listIterator();
ArrayList jtypeList = (ArrayList) request.getAttribute("TYPELIST");
ListIterator<Job_Types> listIteratortype = jtypeList.listIterator();
%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

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
					<form action="SaveEmployee" method="post" onsubmit="prepareAll()">

						<div class="row g-3">
							<!-- Name -->
							<div class="col-md-6">
								<div class="form-floating">
									<input name="name" type="text" class="form-control"
										id="floatingName" placeholder="employee Name"> <label
										for="floatingName">Full Name</label>
								</div>
							</div>

							<!-- Gender -->
							<div class="col-md-6">
								<div class="form-floating">
									<select name="gender" class="form-select" id="floatingGender">
										<option value="" disabled selected>Select Gender</option>
										<option value="Male">Male</option>
										<option value="Female">Female</option>

									</select> <label for="floatingGender">Gender</label>
								</div>
							</div>

							<!-- DOB -->
							<div class="col-md-6">
								<div class="form-floating">
									<input name="dob" type="date" class="form-control"
										id="floatingDOB"> <label for="floatingDOB">Date
										of Birth</label>
								</div>
							</div>

							<!-- Phone Number -->
							<div class="col-md-6">
								<div class="form-floating">
									<input name="phone" type="tel" class="form-control"
										id="floatingPhone" placeholder="+91-9876543210"> <label
										for="floatingPhone">Phone Number</label>
								</div>
							</div>

							<!-- Department -->
							<div class="col-md-6">
								<div class="form-floating">
									<select name="department" class="form-select"
										onchange="loadManagers(this.value)">
										<option value="" disabled selected>Select Department</option>
										<%
										while (listIteratorDept.hasNext()) {
											Department dept = listIteratorDept.next();
										%>
										<option value="<%=dept.getDepartmentID()%>"><%=dept.getDepartment()%></option>
										<%
										}
										%>
									</select> <label>Departments</label>
								</div>
							</div>

							<!-- Job Title -->
							<div class="col-md-6">
								<div class="form-floating">
									<select name="jobTitle" class="form-select">
										<option value="" disabled selected>Select Job Titles</option>
										<%
										while (listIteratortitle.hasNext()) {
											Job_titles j_title = listIteratortitle.next();
										%>
										<option value="<%=j_title.getJob_title_id()%>"><%=j_title.getJob_title()%></option>
										<%
										}
										%>
									</select> <label>Job Titles</label>
								</div>
							</div>

							<!-- Manager Info -->
							<div class="col-md-6">
								<div class="form-floating" id="managerList">
									<select name="manager" class="form-select">
										<option value="" disabled selected>Select a Manager</option>
									</select> <label for="floatingManager">Manager Name</label>
								</div>
							</div>

							<!-- Hiring Date -->
							<div class="col-md-6">
								<div class="form-floating">
									<input name="hiringDate" type="date" class="form-control"
										id="floatingHireDate"> <label for="floatingHireDate">Hiring
										Date</label>
								</div>
							</div>

							<!-- Employee Type -->
							<div class="col-md-6">
								<div class="form-floating">
									<select name="emptype" class="form-select">
										<option value="" disabled selected>Select Type</option>
										<%
										while (listIteratortype.hasNext()) {
											Job_Types j_type = listIteratortype.next();
										%>
										<option value="<%=j_type.getEmployee_type_id()%>"><%=j_type.getEmployee_type()%></option>
										<%
										}
										%>
									</select> <label>Type of Employee</label>
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
							<!-- Address Section -->
							<hr class="my-4">
							<h5 class="mb-3 mt-3">Address</h5>
							<div id="addressSection">
								<div class="row g-3 mb-2">
									<!-- Address Line 1 -->
									<div class="col-md-6">
										<div class="form-floating">
											<input name="addressLine1" type="text" class="form-control"
												id="floatingAddress1" placeholder="Address Line 1">
											<label for="floatingAddress1">Address Line 1</label>
										</div>
									</div>

									<!-- Address Line 2 -->
									<div class="col-md-6">
										<div class="form-floating">
											<input name="addressLine2" type="text" class="form-control"
												id="floatingAddress2" placeholder="Address Line 2">
											<label for="floatingAddress2">Address Line 2</label>
										</div>
									</div>
								</div>

								<div class="row g-3 mb-2">
									<!-- Country -->
									<div class="col-md-4">
										<div class="form-floating">
											<input name="country" type="text" class="form-control"
												id="floatingCountry" placeholder="Country"> <label
												for="floatingCountry">Country</label>
										</div>
									</div>

									<!-- State -->
									<div class="col-md-4">
										<div class="form-floating">
											<input name="state" type="text" class="form-control"
												id="floatingState" placeholder="State"> <label
												for="floatingState">State</label>
										</div>
									</div>

									<!-- City -->
									<div class="col-md-4">
										<div class="form-floating">
											<input name="city" type="text" class="form-control"
												id="floatingCity" placeholder="City"> <label
												for="floatingCity">City</label>
										</div>
									</div>
								</div>

								<div class="row g-3 mb-2">
									<!-- Zip Code -->
									<div class="col-md-6">
										<div class="form-floating">
											<input name="zipCode" type="text" class="form-control"
												id="floatingZip" placeholder="Zip Code"> <label
												for="floatingZip">Zip Code</label>
										</div>
									</div>
								</div>
							</div>


							<!-- Benefits -->
							<div class="col-md-6">
								<label for="benefits" class="form-label">Benefits</label> <select
									id="benefits" name="benefits[]" class="form-select" multiple>
									<option value="1">Medical Insurance</option>
									<option value="1">Provident Fund</option>
									<option value="1">Life Insurance</option>
								</select>
								<div class="form-text">Select one or more benefits.</div>
							</div>

							<!-- Working Hours -->
							<div class="col-md-6">
								<label class="form-label d-block">Working Hours</label>
								<div class="d-flex gap-2">
									<div class="form-floating flex-fill">
										<input name="workingFrom" type="time" class="form-control"
											id="workingFrom"> <label for="workingFrom">From</label>
									</div>
									<div class="form-floating flex-fill">
										<input name="workingTo" type="time" class="form-control"
											id="workingTo"> <label for="workingTo">To</label>
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
											placeholder="Certificate Name"> <label>Certificate
											Name</label>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-floating">
										<input name="certificateAuthority" type="text"
											class="form-control" placeholder="Issued By"> <label>Certificate
											Authority</label>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-floating">
										<input name="certificateYear" type="number"
											class="form-control" placeholder="2023" min="1900" max="2099">
										<label>Year</label>
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
											placeholder="Skill Name"> <label>Skill Name</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-floating">
										<select name="proficiency" class="form-select">
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

						<!-- Emergency Contacts -->
						<hr class="my-4">
						<h5 class="mb-3 mt-3">Emergency Contacts</h5>
						<div id="emergencyContacts">
							<div class="row g-3 mb-2 emergency-contact">
								<div class="col-md-4">
									<div class="form-floating">
										<input name="emergencyPhone" type="tel" class="form-control"
											placeholder="Phone"> <label>Emergency Contact
											Phone</label>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-floating">
										<input name="emergencyName" type="text" class="form-control"
											placeholder="Name"> <label>Emergency Contact
											Name</label>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-floating">
										<input name="emergencyRelation" type="text"
											class="form-control" placeholder="Relationship"> <label>Relationship</label>
									</div>
								</div>
							</div>
						</div>

						<div class="mb-3">
							<button type="button" class="btn btn-sm btn-outline-secondary"
								onclick="addEmergencyContact()">Add Another Contact</button>
						</div>
				</div>

				<!-- Hidden fields to carry dynamic data -->
				<input type="hidden" name="hdnSkills" id="hdnSkills"> <input
					type="hidden" name="hdnCertifications" id="hdnCertifications">
				<input type="hidden" name="hdnContacts" id="hdnContacts">

				<div class="mt-4">
					<button class="btn btn-primary w-100 py-2" type="submit">Add
						Employee</button>
				</div>

				</form>
			</main>
		</div>
	</div>
</div>

<script>
function loadManagers(deptId) { 
 $.ajax({
     url: 'LoadManagers',
     type: 'GET',
     data: { deptId: deptId },
     success: function(response) { 
         $('#managerList').html(response); 
     }, 
     error: function(xhr, status, error) { 
         console.error("Error loading JSP fragment:", error); 
     } 
 });
}

// ✅ Add Another Emergency Contact (with Relationship)
function addEmergencyContact() {
    const container = document.getElementById('emergencyContacts');
    const div = document.createElement('div');
    div.className = 'row g-3 mb-2 emergency-contact';
    div.innerHTML = `
      <div class="col-md-4">
        <div class="form-floating">
          <input name="emergencyPhone" type="tel" class="form-control" placeholder="Phone">
          <label>Emergency Contact Phone</label>
        </div>
      </div>
      <div class="col-md-4">
        <div class="form-floating">
          <input name="emergencyName" type="text" class="form-control" placeholder="Name">
          <label>Emergency Contact Name</label>
        </div>
      </div>
      <div class="col-md-4">
        <div class="form-floating">
          <input name="emergencyRelation" type="text" class="form-control" placeholder="Relationship">
          <label>Relationship</label>
        </div>
      </div>`;
    container.appendChild(div);
}

// ✅ DOB & Hiring Date Validation
function validateDates() {
    const dob = document.getElementById("floatingDOB").value;
    const hireDate = document.getElementById("floatingHireDate").value;
    const today = new Date();

    if (dob) {
        const dobDate = new Date(dob);
        const age = today.getFullYear() - dobDate.getFullYear();
        const m = today.getMonth() - dobDate.getMonth();
        const adjustedAge = (m < 0 || (m === 0 && today.getDate() < dobDate.getDate())) ? age - 1 : age;

        if (adjustedAge < 24) {
            alert("Employee must be at least 24 years old.");
            return false;
        }
    }

    if (hireDate) {
        const hire = new Date(hireDate);
        if (hire > today) {
            alert("Hiring date cannot be in the future.");
            return false;
        }
    }

    return true;
}

// Collect Certifications
function prepareCertifications() {
    let certs = [];
    document.querySelectorAll('#certifications .certification').forEach(row => {
        const name = row.querySelector('input[name="certificateName"]').value;
        const authority = row.querySelector('input[name="certificateAuthority"]').value;
        const year = row.querySelector('input[name="certificateYear"]').value;
        if (name && authority && year) {
            certs.push(name + "," + authority + "," + year);
        }
    });
    document.getElementById("hdnCertifications").value = certs.join(";");
}

// Collect Skills
function prepareSkills() {
    let skills = [];
    document.querySelectorAll('#skills .skill').forEach(row => {
        const skillName = row.querySelector('input[name="skillName"]').value;
        const proficiency = row.querySelector('select[name="proficiency"]').value;
        if (skillName && proficiency) {
            skills.push(skillName + "," + proficiency);
        }
    });
    document.getElementById("hdnSkills").value = skills.join(";");
}

// Collect Contacts
function prepareContacts() {
    let contacts = [];
    document.querySelectorAll('#emergencyContacts .emergency-contact').forEach(row => {
        const phone = row.querySelector('input[name="emergencyPhone"]').value;
        const name = row.querySelector('input[name="emergencyName"]').value;
        const relation = row.querySelector('input[name="emergencyRelation"]').value;
        if (phone && name) {
            contacts.push(phone + "," + name + "," + relation);
        }
    });
    document.getElementById("hdnContacts").value = contacts.join(";");
}

// Call all before submit
function prepareAll() {
    if (!validateDates()) return false; // ✅ Prevent submit if invalid
    prepareSkills();
    prepareCertifications();
    prepareContacts();
    return true;
}
</script>
