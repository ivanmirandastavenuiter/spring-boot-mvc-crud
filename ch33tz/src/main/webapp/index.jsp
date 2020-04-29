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
<title>Welcome</title>
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

        div.operations-container {
            width: 100%;
            display: flex;
            flex-wrap: wrap;
        }

        div[class^="operation-item"] {
            width: 49.67%;
            height: 400px;
            border: .2vw solid #000;
            display: flex;
            justify-content: center;
            align-items: center;
            transition: background-color linear .3s;
        }

        div.operation-item-c { background-color: #ff9100; border-right: none; }
        div.operation-item-r { background-color: #ffd000; }
        div.operation-item-u { background-color: #00f7ff; border-right: none; border-top: none; }
        div.operation-item-d { background-color: #ff0000; border-top: none;}

        div.operation-label {
            font-family: 'Open Sans Condensed', sans-serif;
            font-size: 4em;
            border: 2px solid #fff;
            color: #fff;
            width: 40%;
            text-align: center;
            padding: 40px;
            border-radius: 80px;
            transition: color, border linear .3s;
        }
        
        div.operation-label a {
        	text-decoration: none;
        	color: inherit !important;
        }

        @media (max-width: 1000px) {
            
            div[class^="operation-item"] {
                width: 99.968%;
            }

            div.operation-item-c,
            div.operation-item-u {
                border-right: .2vw solid #000;
            }

        }

</style>
</head>
<body>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!-- 
<h1>Welcome to CH33TZ crud</h1>

<a href="${contextPath}/user/list">List all users</a><br>
<a href="${contextPath}/user/add">Create new user</a><br>
<a href="${contextPath}/user/list">Update user</a><br>
<a href="${contextPath}/user/list">Delete user</a> -->

<div class="main-container">

        <div class="title-container">
            <h1 class="main-title">CH33TZ</h1>
        </div>

        <div class="operations-container">
            <div class="operation-item-c">
                <div class="operation-label">
                    <a href="${contextPath}/user/add">CREATE</a>
                </div>
            </div>
            <div class="operation-item-r">
                <div class="operation-label">
                    <a href="${contextPath}/user/list">READ</a>
                </div>
            </div>
            <div class="operation-item-u">
                <div class="operation-label">
                    <a href="${contextPath}/user/list">UPDATE</a>
                </div>
            </div>
            <div class="operation-item-d">
                <div class="operation-label">
                    <a href="${contextPath}/user/list">DELETE</a>
                </div>
            </div>
        </div>
    </div>

    <script>


        $(document).ready(function() {

            let operationItems = $('div[class^="operation-item"]').children();

            operationItems.each(function() {
                let parentClassName = $(this).parent().attr('class');

                switch(parentClassName) {

                    // Orange
                    case 'operation-item-c': 

                        $(this).hover(
                            function() {
                                $(this).css({
                                    "border-color" : "#ff9100",
                                    "color" : "#ff9100"
                                });
                                $(this).parent().css("background", "#fff");
                            }, 
                            function() {
                                $(this).css({
                                    "border-color" : "#fff",
                                    "color" : "#fff"
                                });
                                $(this).parent().css("background", "#ff9100");
                            }
                        );

                    break;

                    // Yellow 
                    case 'operation-item-r': 

                        $(this).hover(
                            function() {
                                $(this).css({
                                    "border-color" : "#ffd000",
                                    "color" : "#ffd000"
                                });
                                $(this).parent().css("background", "#fff");
                            }, 
                            function() {
                                $(this).css({
                                    "border-color" : "#fff",
                                    "color" : "#fff"
                                });
                                $(this).parent().css("background", "#ffd000");
                            }
                        );

                    break;

                    // Blue
                    case 'operation-item-u': 

                        $(this).hover(
                            function() {
                                $(this).css({
                                    "border-color" : "#00f7ff",
                                    "color" : "#00f7ff"
                                });
                                $(this).parent().css("background", "#fff");
                            }, 
                            function() {
                                $(this).css({
                                    "border-color" : "#fff",
                                    "color" : "#fff"
                                });
                                $(this).parent().css("background", "#00f7ff");
                            }
                        );

                    break;

                    // Red
                    case 'operation-item-d': 

                        $(this).hover(
                            function() {
                                $(this).css({
                                    "border-color" : "#ff0000",
                                    "color" : "#ff0000"
                                });
                                $(this).parent().css("background", "#fff");
                            }, 
                            function() {
                                $(this).css({
                                    "border-color" : "#fff",
                                    "color" : "#fff"
                                });
                                $(this).parent().css("background", "#ff0000");
                            }
                        );

                    break;

                }
                
            });

        });

    </script>

</body>
</html>