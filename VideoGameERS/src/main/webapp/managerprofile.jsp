<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.revature.beans.User"%>

<jsp:include page="/resources/tiles/jstl.jsp"></jsp:include>
<jsp:include page="/profile" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="/resources/tiles/header/header.jsp"%>
<script src="http://code.jquery.com/jquery.min.js"></script>
<title>Profile</title>
</head>
<body>
	<jsp:include page="/resources/tiles/navbars/managernavbar.jsp"></jsp:include>
	<jsp:useBean id="user" class="com.revature.beans.User" scope="session" />
	<%-- Get User Object to populate page --%>
	<%!User logedInUser = null;%>

	<%
		logedInUser = (User) session.getAttribute("user");
	%>

	<div class="well">
		<div id="myTabContent" class="tab-content">
			<h1 class="page-header">Edit Profile</h1>
			<div class="row tab-pane active in" id="home">
				<div class="col-md-8 col-sm-6 col-xs-12 personal-info">

					<h3>Account: ${sessionScope.user.getUsername()}</h3>
					<form class="form-horizontal" method="POST" action="profile.jsp">
						<div class="form-group">
							<label class="col-lg-3 control-label">First name:</label>
							<div class="col-lg-8">
								<input class="form-control"
									value="${sessionScope.user.getFirstName()}" name="firstname" type="text">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">Last name:</label>
							<div class="col-lg-8">
								<input class="form-control"
									value="${sessionScope.user.getLastName()}" name="lastname" type="text">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">Role:</label>
							<div class="col-lg-8">
								<label class="form-control" id="roleId" >${sessionScope.user.getRoleId()}</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">Email:</label>
							<div class="col-lg-8">
								<input class="form-control"
									value="${sessionScope.user.getEmail()}" name="email" type="text">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label"></label>
							<div class="col-md-8">
								<button class="btn btn-primary">Update</button> <span></span>
								 <input class="btn btn-default" value="Cancel" type="reset">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		
    	var role = document.getElementById("roleId").innerHTML;
		
		if (role == 1) {
			document.getElementById("roleId").innerHTML = "Employee";
		} else if (role == 2) {
			document.getElementById("roleId").innerHTML = "Manager";
		}
		
	</script>

</body>
</html>