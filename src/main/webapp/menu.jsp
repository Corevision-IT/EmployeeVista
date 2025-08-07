<nav class="sidebar sidebar-offcanvas" id="sidebar">
	<ul class="nav">
		<li class="nav-item nav-profile"><a href="#" class="nav-link">
				<div class="nav-profile-image">
					<img src="assets/images/faces/<%=profilePic%>" alt="profile" /> <span
						class="login-status online"></span>
					<!--change to offline or busy as needed-->
				</div>
				<div class="nav-profile-text d-flex flex-column">
					<span class="font-weight-bold mb-2"><%=userName%></span> <span
						class="text-secondary text-small"><%=roleName%></span>
				</div> <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
		</a></li>
		
		<%while (listIteratorMenu.hasNext())
		{
			Menu menu = listIteratorMenu.next();
			String menuName = menu.getMenuName();
			String urlPath = menu.getUrlPath();
			
		%>
		<li class="nav-item">
			<a class="nav-link" href="<%=urlPath %>"> 
				<span class="menu-title"><%=menuName %></span> 
				<i class="mdi mdi-home menu-icon"></i>
			</a>
		</li>
		<%
		}
		%>
		
		
		
</nav>