<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css2?family=Cinzel&family=Monoton&family=Open+Sans+Condensed:wght@300&family=Righteous&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cinzel&family=Monoton&family=Open+Sans+Condensed:wght@300&family=Righteous&display=swap" rel="stylesheet">
<link rel="icon" type="image/x-icon" href="data:image/x-icon;base64,AAABAAEAEBAAAAEAIABoBAAAFgAAACgAAAAQAAAAIAAAAAEAIAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAkXxnJY94Z2aPeGdmj3hnZo94Z2aPeGdmj3hnZo94Z2aPeGdmjnhjJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIp1ahiPeGa2j3lnzJB7aOKSfWvtkn1r7ZB7aOKPeWfMjnlltZB6ZBcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACplIGk1MGw/9TBsP+plIGkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAl4Fs2495Zv+PeWb/j3lm/495Zv+PeWb/j3lm/495Zv+PeWb/j3lm/495Zv+PeWb/j3lm/5GDcv+Ti37/l4Fs25yGcNuPeWb/j3lm/495Zv+PeWb/j3lm/495Zv+PeWb/j3lm/495Zv+PeWb/j3lm/495Zv+Rg3L/k4t+/5yGcNu5ooek/+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv+5ooekuaKHpP/owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML/uaKHpLmih6T/6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC/7mih6S5ooek/+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv+5ooekuaKHpP/owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML/uaKHpLmih6T/6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC/7mih6S5ooek/+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv+5ooekuaKHpP/owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML//+jC///owv//6ML/uaKHpKyWfYvErZHDxK2Rw8StkcPErZHDxK2Rw8StkcPErZHDxK2Rw8StkcPErZHDxK2Rw8StkcPErZHDxK2Rw6yWfYsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA//8AAOAHAADgBwAA/D8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA//8AAA==" />
<script
    src="https://code.jquery.com/jquery-3.5.0.slim.js"
    integrity="sha256-sCexhaKpAfuqulKjtSY7V9H7QT0TCN90H+Y5NlmqOUE="
    crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/465dd91009.js" crossorigin="anonymous"></script>
<title>List</title>
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

     div.header-container, 
     div.item-container {
         height: 50px;
         width: 60%;
         display: flex;
         border: .3vw solid black;
         margin: 0 auto;
     }

     div.header-container {
         margin-top: 50px;
     }

     div.item-container {
         border-top: 0;
     }

     div.headers {
         width: 15%;
         border-right: .3vw solid #000;
         display: flex;
         justify-content: center;
         align-items: center;
         font-family: 'Open Sans Condensed', sans-serif;
         font-size: 1.2em;
     }

     div.headers-actions {
         width: 40%;
         display: flex;
         justify-content: center;
         align-items: center;
         font-family: 'Open Sans Condensed', sans-serif;
         font-size: 1.2em;
     }

     div.item-cell {
         width: 15%;
         border-right: .3vw solid #000;
         display: flex;
         justify-content: center;
         align-items: center;
         font-family: 'Open Sans Condensed', sans-serif;
         font-size: 1.2em;
         background: #ffd000;
     }

     div.item-action {
         width: 20%;
         display: flex;
         justify-content: center;
         align-items: center;
         font-family: 'Open Sans Condensed', sans-serif;
         font-size: 1.2em;
     }

     div.item-action.update { background: #00f7ff; color: #fff; }
     div.item-action.delete { background: #ff0000; color: #fff; }
     
     div.item-action.update a,
     div.item-action.delete a {
     	font-weight: bold;
     	text-decoration: none;
     	color: inherit !important;
     }
     
     div.arrow-container {
     	margin-top: 50px;
         display: flex;
     }

     div.arrow-container i {
         font-size: 5em;
         color: #ffd000;
     }

     div.arrow-container p {
         padding: 13px;
         font-family: 'Open Sans Condensed', sans-serif;
     }

</style>
</head>
<body>

	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	
	<div class="main-container">

        <div class="title-container">
            <h1 class="main-title">CH33TZ</h1>
        </div>

        <hr>
        
        <div class="errors-container ${success} }">
        	<p>User deleted successfully</p>
        </div>

        <div class="list-container">

            <div class="header-container">

                <div class="headers">Id</div>
                <div class="headers">Name</div>
                <div class="headers">Surname</div>
                <div class="headers">Age</div>
                <div class="headers-actions">Actions</div>

            </div>
            
            <c:forEach var="user" items="${usersList}">

	            <div class="item-container">
	             
	                <div class="item-cell"><c:out value="${user.id}" /></div>
	                <div class="item-cell"><c:out value="${user.name}" /></div>
	                <div class="item-cell"><c:out value="${user.surname}" /></div>
	                <div class="item-cell"><c:out value="${user.age}" /></div>
	                <div class="item-action update"><a href="${contextPath}/user/update/${user.id}">Update</a></div>
	                <div class="item-action delete"><a class="delete-btn" href="${contextPath}/user/delete/${user.id}">Delete</a></div>
	
	            </div>
            
            </c:forEach>

        </div>
        
        <div class="arrow-container">
            <a href="${contextPath}"><i class="fas fa-arrow-left"></i></a>
            <p>BACK</p>
        </div>
        
    </div>
	
	<script>
	
		$(document).ready(function() {
			
			try {
				
				$('.delete-btn').click(function(e) {
					
					e.preventDefault();
					let url = $(this)[0].href;
					
			    	let newForm = document.createElement('form');
			    	newForm.action = url;
			    	newForm.method = 'POST';
			    	
			    	$(document.body).append(newForm);
			    	newForm.submit();

				});
				
			} catch(e) {
				console.log('Error name: ' + e.name);
				console.log('Description: ' + e.message);
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