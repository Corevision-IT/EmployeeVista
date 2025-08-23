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
					<form action="SaveEmployee" method="post">


						<div class="row g-3">
							<!-- Name -->
							<div class="col-md-6">
								<div class="form-floating">
									<input name="name" type="text" class="form-control"
										id="floatingName" placeholder="employee Name" required> <label
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
									<select name="gender" class="form-select" id="floatingGender"
										required>
										<option value="" disabled selected>Select Job Titles</option>
										<%
										while (listIteratortitle.hasNext()) {
											Job_titles j_title = listIteratortitle.next();
											int titleId = j_title.getJob_title_id();
											String title = j_title.getJob_title();
										%>
										<option value="<%=titleId%>"><%=title%></option>
										<%
										}
										%>

									</select> <label for="floatingGender">Job Titles</label>
								</div>
							</div>


							<!-- Manager Info -->
							<div class="col-md-6">
								<div class="form-floating" id="managerList">
									<select name="manager" class="form-select" id="floatingManager"
										required>
										<option value="" disabled selected>Select Manager A
											Manager</option>
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
									<select name="gender" class="form-select" id="floatingGender"
										required>
										<option value="" disabled selected>Select Type</option>
										<%
										while (listIteratortype.hasNext()) {
											Job_Types j_type = listIteratortype.next();
											int typeid = j_type.getEmployee_type_id();
											String type = j_type.getEmployee_type();
										%>
										<option value="<%=typeid%>"><%=type%></option>
										<%
										}
										%>

									</select> <label for="floatingGender">Type of Employee</label>
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
							<!-- Benefits -->
							<div class="col-md-6">
								<label for="benefits" class="form-label">Benefits</label> <select
									id="benefits" name="benefits[]" class="form-select" multiple
									required>
									<option value="Medical Insurance">Medical Insurance</option>
									<option value="Provident Fund">Provident Fund</option>
									<option value="Life Insurance">Life Insurance</option>
								</select>
								<div class="form-text">Select one or more benefits.</div>
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
										<input  id="skillName"   name="skillName" type="text" class="form-control"
											placeholder="Skill Name" required onchange="prepareSkillList()"> <label>Skill
											Name</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-floating">
										<select  id="proficiency"   name="proficiency" class="form-select" required onchange="prepareSkillList()">
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
				</div>
				<div class="mt-4">
					<button class="btn btn-primary w-100 py-2" type="submit">Add
						Employee</button>
				</div>

				<input type="hidden" name="hdnSkills" value="" id="hdnSkills">

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
				<input  id="skillName"   name="skillName" type="text" class="form-control"
					placeholder="Skill Name" required onchange="prepareSkillList()"> <label>Skill
					Name</label>
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-floating">
				<select  id="proficiency"   name="proficiency" class="form-select" required onchange="prepareSkillList()">
					<option value="" disabled selected>Select
						Proficiency</option>
					<option value="Beginner">Beginner</option>
					<option value="Intermediate">Intermediate</option>
					<option value="Advanced">Advanced</option>
					<option value="Expert">Expert</option>
				</select> <label>Proficiency Level</label>
			</div>
		</div>
	    `;
	    container.appendChild(div);
	  }
	  document.addEventListener('DOMContentLoaded', function () {
		    new Choices('#benefits', {
		      removeItemButton: true,
		      placeholder: true,
		      placeholderValue: 'Select benefits'
		    });
		  });
	  
	  function loadManagers(deptId)
	  {
		

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
	  
	  function prepareSkillList()
	  {
		  const fieldName = document.getElementById('hdnSkills');
		  
		  skillName = document.getElementById('skillName').value;
		  //alert("skillName = "+skillName);
		  
		  proficiency = document.getElementById('proficiency').value;
		  //alert("proficiency = "+proficiency);
		  
		  let newEntry = skillName + "," + proficiency;

		    if (fieldName.value) {
		        fieldName.value += ";" + newEntry;
		    } else {
		        fieldName.value = newEntry;
		    }
		  
		  
		  alert("fieldName.value = "+fieldName.value);
	  }
	  
</script>

</main>