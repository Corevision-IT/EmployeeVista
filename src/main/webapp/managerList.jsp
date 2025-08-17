<%@ page import="empvista.entities.Manager"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.ListIterator"%>

<%
ArrayList managerList = (ArrayList) request.getAttribute("MANAGER_LIST");
ListIterator<Manager> listIteratorManager = managerList.listIterator();
%>



<select name='manager' class='form-select' id='floatingManager' required>
	<option value='0' disabled selected>Select Manager A Manager</option>
	<%
	while (listIteratorManager.hasNext()) {
		Manager manager = listIteratorManager.next();
		
		int managerId = manager.getManagerId();
		String managerName = manager.getManager();
	%>
	<option value="<%=managerId%>"><%=managerName%></option>
	<%
	}
	%>
</select>
<label for='floatingManager'>Manager Name</label>