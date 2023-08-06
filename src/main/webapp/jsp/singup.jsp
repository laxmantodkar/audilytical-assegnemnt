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
	height: 100vh;
	padding: 0px;
	margin: 0px;
	background-color: #e6e6e6;
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
			<div style="text-align: center; color: blue; font-size: 40px;">Create
				a new account</div>

			<div class="field">
				<label>User Name</label> <input type="text" name="userName"
					id="userName" required>
				<div style="color: red" id="userNameMsg"></div>
				<div style="color: red; font-size: 20px;">${msg}</div>
			</div>
			<div class="field">
				<label>Password</label> <input type="password" name="password"
					id="password" required>
				<div style="color: red" id="passwordMsg"></div>
			</div>
			<div class="field">
				<label>First Name</label> <input type="text" name="firstName"
					id="firstName" required>
				<div style="color: red" id="firstNameMsg"></div>
			</div>
			<div class="field">
				<label>Last Name</label> <input type="text" name="lastName"
					id="lastName" required>
				<div style="color: red" id="lastNameMsg"></div>
			</div>
			<div class="field">
				<label>Mobile Number</label> <input type="number" name="phoneNumber"
					id="phoneNumber" required maxlength="10" min="10">
			</div>
			<div class="field">
				<label>Date of Birth</label> <input type="date" name="dateOfBirth"
					id="dateOfBirth" required>
			</div>
			<div class="field">
				<label>Address</label>
				<textarea type="text" name="address" id="address" required></textarea>
			</div>
			<div class="button">
				<button type="submit">Sign Up</button>
			</div>
			<div>
				<p>
					<a style="font-size: 22px;" href="/">Already have an account?</a>
				</p>
			</div>
		</form>
	</div>
	<script type="text/javascript">
		function validateForm(event) {

			let name = false; // Set to false initially to indicate validation not passed
			let last = false; // Set to false initially to indicate validation not passed
			let pass = true;

			const nameInput = document.getElementById('firstName');
			const lastInput = document.getElementById('lastName');
			const passwordInput = document.getElementById('password');
			const userNameInput = document.getElementById('userName');

			if (/\d/.test(nameInput.value)) {
				document.getElementById("firstNameMsg").innerText = "First Name should not contain numbers."
				name = false;
			} else {
				document.getElementById("firstNameMsg").innerText = "";
				name = true;
			}

			if (/\d/.test(lastInput.value)) {
				document.getElementById("lastNameMsg").innerText = "Last Name should not contain numbers."

				last = false;
			} else {
				document.getElementById("lastNameMsg").innerText = "";
				last = true;
			}

			if (userNameInput.value.trim() === '') {
				document.getElementById("userNameMsg").innerText = "User Name cannot be empty."

				userNameInput.focus();
				return false;
			}

			if (!/^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]+$/
					.test(passwordInput.value)) {
				document.getElementById("passwordMsg").innerText = "Password should have at least one letter and one number, no special characters allowed."
				pass = false;
			} else {
				document.getElementById("passwordMsg").innerText = "";
				pass = true;
			}

			if (name && last && pass) {
				return true;
			} else {
				return false;
			}
		}
	</script>
</body>

</html>