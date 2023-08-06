<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sign up</title>
<style type="text/css">
body {
	width: 100vw;
	display: flex;
	align-items: center;
	height: 100vh;
	padding: 0px;
	margin: 0px;
	background-color: #e6e6e6;
	height: 100vh
}

.main {
	width: 30%;
	background-color: white;
	display: flex;
	margin: 0 auto;
	width: 30%;
	border-radius: 10px;
}

.form {
	display: flex;
	flex-direction: column;
	align-items: center;
	gap: 20px;
	width: 100%;
	gap: 20px;
}

.field {
	display: flex;
	flex-direction: column;
	font-size: 20px;
	width: 80%;
}

.button button {
	padding: 10px;
	color: blue;
}

form div input {
	font-size: 20px;
}

textarea {
	font-size: 20px;
	max-width: 100%;
	min-width: 100%;
}
</style>
</head>
<body>
	<div class="main">
		<form class="form" onsubmit="return validateForm(event)" action="save"
			method="post">
			<div style="text-align: center; color: blue; font-size: 40px;">User
				Information</div>
			<div class="field">
				<label>User Name</label> <input type="text" name="userName"
					id="userName" readonly="readonly" value="${user.userName}">
			</div>
			<div class="field">
				<label>Mobile Number</label> <input type="number" name="phoneNumber"
					id="phoneNumber" readonly="readonly" value="${user.phoneNumber}">
			</div>
			<div class="field">
				<label>Date of Birth</label> <input type="date" name="dateOfBirth"
					id="dateOfBirth" readonly="readonly" value="${user.dateOfBirth}">
			</div>
			<div class="field">
				<label>Address</label>
				<textarea name="address" id="address"
					readonly="readonly">${user.address}</textarea>
			</div>
			<div class="field">
				<label>Date Time</label> <input type="text" name="time" id="address"
					readonly="readonly" value="${user.time}">
			</div>
			<div></div>
		</form>
	</div>

</body>

</html>