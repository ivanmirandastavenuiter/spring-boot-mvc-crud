<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css2?family=Cinzel&family=Monoton&family=Open+Sans+Condensed:wght@300&family=Righteous&display=swap" rel="stylesheet">
<link rel="icon" type="image/x-icon" href="data:image/x-icon;base64,AAABAAEAEBAAAAEAIABoBAAAFgAAACgAAAAQAAAAIAAAAAEAIAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAkXxnJY94Z2aPeGdmj3hnZo94Z2aPeGdmj3hnZo94Z2aPeGdmjnhjJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIp1ahiPeGa2j3lnzJB7aOKSfWvtkn1r7ZB7aOKPeWfMjnlltZB6ZBcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACplIGk1MGw/9TBsP+plIGkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAl4Fs2495Zv+PeWb/j3lm/495Zv+PeWb/j3lm/495Zv+PeWb/j3lm/495Zv+PeWb/j3lm/5GDcv+Ti37/l4Fs25yGcNuPeWb/j3lm/495Zv+PeWb/j3lm/495Zv+PeWb/j3lm/495Zv+PeWb/j3lm/495Zv+Rg3L/k4t+/5yGcNu5ooek/+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv+5ooekuaKHpP/owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML/uaKHpLmih6T/6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC/7mih6S5ooek/+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv+5ooekuaKHpP/owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML/uaKHpLmih6T/6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC/7mih6S5ooek/+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv+5ooekuaKHpP/owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML/uaKHpKyWfYvErZHDxK2Rw8StkcPErZHDxK2Rw8StkcPErZHDxK2Rw8StkcPErZHDxK2Rw8StkcPErZHDxK2Rw6yWfYsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA//8AAOAHAADgBwAA/D8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA//8AAA==" />
<script
    src="https://code.jquery.com/jquery-3.5.0.slim.js"
    integrity="sha256-sCexhaKpAfuqulKjtSY7V9H7QT0TCN90H+Y5NlmqOUE="
    crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/465dd91009.js" crossorigin="anonymous"></script>
<title>Update user</title>
<style>

	body {
            margin: 0;
            padding: 0;
        }

        div.main-container {
            margin: 0;
            padding: 0;
        }

        div.title-container {
            margin: 50px auto;
            width: 50%;
            text-align: center;
        }

        h1.main-title {
            font-family: 'Monoton', cursive;
            color: #902828;
            letter-spacing: 4px;
            font-size: 4em;
            margin: .1em;
            padding: .1em;
        }

        div.operation-label {
            font-family: 'Open Sans Condensed', sans-serif;
            font-size: 4em;
            color: #fff;
            width: 100%;
            padding: 15px;
            background: #00f7ff;
        }
        
        div.errors-container {
            width: 40%;
            margin: 50px auto;
            display: none;
        }

        div.errors-container p {
            text-align: center;
            font-family: 'Open Sans Condensed', sans-serif;
            font-weight: bold;
            border: 2px solid #088103;
            color: #088103;
            padding: 20px;
            border-radius: 20px;
            width: 40%;
            margin: 0 auto;
        }
        

        div.form-container {
            margin: 100px auto;
            width: 50%;
            background: #95fcff;
            padding: 20px;
            border-radius: 50px;
        }

        div.form-input-container {
            display: flex;
            justify-content: space-evenly;
            flex-flow: row wrap;
        }

        div.form-input {
            display: block;
        }
        
        div.form-input-box-error {
            padding: 5px;
            font-family: 'Open Sans Condensed', sans-serif;
            color: #ff0000;
            font-weight: bold;
        }

        div.form-input-submit input {
            display: block;
            margin: 0 auto;
            position: relative;
            top: 35px;
            background: transparent;
            font-family: 'Open Sans Condensed', sans-serif;
            border: 1px solid #00d1d8;
            font-size: 1.1em;
            padding: 7px;
            color: #fff;
            background: #00f7ff;
        }

        div.form-input-submit input:hover,
        div.form-input-submit input:focus {
            outline: none;
            border: 1px solid #009da2;
        }

        div.form-input-submit input:active {
            outline: none;
            border: 2px solid #005658;
        }

        div.form-input input {
            padding: 5px;
            border: 1px solid #000;
            font-family: 'Open Sans Condensed', sans-serif;
            font-size: 1.2em;
            background: none !important;
            outline: none;
        }

        input:-webkit-autofill,
        input:-webkit-autofill:hover, 
        input:-webkit-autofill:focus,
        input:-internal-autofill-selected {
            -webkit-box-shadow: 0 0 0px 1000px transparent inset;
            transition: background-color 5000s ease-in-out 0s;
        }

        ::placeholder { color: #000; }

        div.arrow-container {
            display: flex;
        }

        div.arrow-container i {
            font-size: 5em;
            color: #00f7ff;
        }

        div.arrow-container p {
            padding: 13px;
            font-family: 'Open Sans Condensed', sans-serif;
        }

        @media (max-width: 960px) {

            div.form-input-container {
                display: flex;
                justify-content: center;
                flex-flow: column wrap;
            }

            div.form-input {
                display: block;
                margin: 10px auto;
            }
        }

</style>
</head>
<body>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="success" value="${success}"/>

<!--  

	<h1>CH33TZ</h1>

	<form:form modelAttribute="user">
	
		<div class="form-input">
			<spring:message code="name" />
			<form:input path="name" value="${selectedUser.name}" />
		</div>
		
		<form:errors path="name" cssClass="error" />
		
		<div class="form-input">
			<spring:message code="surname" />
			<form:input path="surname" value="${selectedUser.surname}" />
		</div>
		
		<form:errors path="surname" cssClass="error" />
		
		<div class="form-input">
			<spring:message code="age" />
			<form:input path="age" value="${selectedUser.age}" />
		</div>
		
		<form:errors path="age" cssClass="error" />
	
		<div class="form-input">
			<input type="submit" value="Create user" />
		</div>
	
	</form:form>
	
	-->
	
	<div class="main-container">

        <div class="title-container">
            <h1 class="main-title">CH33TZ</h1>
        </div>

        <hr>

        <div class="request-container">

            <div class="operation-label">
                UPDATE
            </div>
            
            <div class="errors-container ${success}">
                <p>User updated successfully</p>
            </div>

            <div class="form-container">

                <form:form modelAttribute="user">

                    <div class="form-input-container">

                        <div class="form-input">
	                        <div class="form-input-box">
		                        <form:input path="name" placeholder="Name" value="${selectedUser.name}" />
	                        </div>
	                        <div class="form-input-box-error">
	                            <form:errors path="name" cssClass="error" />
	                        </div>
                        </div>
                        
                        <div class="form-input">
                       		<div class="form-input-box">
	                            <form:input path="surname" placeholder="Surname" value="${selectedUser.surname}" />
	                        </div>
	                        <div class="form-input-box-error">
	                            <form:errors path="surname" cssClass="error" />
	                        </div>
                        </div>
                        
                        <div class="form-input">
                            <div class="form-input-box">
	                            <form:input path="age" placeholder="Age" value="${selectedUser.age}" />
	                        </div>
	                        <div class="form-input-box-error">
	                            <form:errors path="age" cssClass="error" />
	                        </div>
                        </div>

                    </div>
                
                    <div class="form-input-submit">
                        <input type="submit" value="Update user" />
                    </div>
                
                </form:form>

            </div>

        </div>

        <div class="arrow-container">
            <a href="${contextPath}"><i class="fas fa-arrow-left"></i></a>
            <p>BACK</p>
        </div>

    </div>
    
    <script>
    
    	$(document).ready(function() {
    		
			let ageTextNode = $('.form-input-box-error').last().children();
          
			if (ageTextNode.length > 0 && ageTextNode[0].innerText.substring(0,17) === 'Failed to convert') {
				ageTextNode[0].innerText = "Can't convert text to numbers";
			}
			
			let errorContainer = $('.errors-container');
            let formContainer = $('div.form-container');

            if (errorContainer.hasClass("true")) {
                errorContainer.css("display", "block");
                formContainer.css("margin-top", "50px");
            }
            
    	});
    	
    </script>

</body>
</html>