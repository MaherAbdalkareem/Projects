<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
        img{
            max-height: 50px;  
        }
        .form{
            border-radius: 6%;
             display: flex;
             flex-direction: column;
             align-items: center;
             background-color: #224c3c;
        }
        .par{
        display:flex;
        justify-content:space-between;
        
        }
        
    </style>
</head>
   <body style="background-color: #cbbf98;">
   <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #b4bcb2;">
        <div class="container">

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <!-- Navbar brand -->
                <a class="navbar-brand mt-2 mt-lg-0" href="/home">
                    <img src="/photo/taqdam-01.png" height="45" alt="taqadm_logo">
                </a>
                <!-- Left links -->
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link text-white fs-5" href="/main">Home </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white fs-5" href="#">About Us</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link text-white fs-5" href="#">Contact Us</a>
                    </li>
                </ul>
                <!-- Left links -->
            </div>
            <div class="d-flex align-items-center ">
                <ul class="nav nav-tabs " style="border: none;">
                    
                    	<li class="nav-item">
                    	<form id="logoutForm" method="POST" action="/logout" >
					        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					        <input class="btn btn-outline-secondary active" type="submit" value="Log out!" />
					    </form>
                        
                   		</li>
               	 </ul>
            </div>
        </div>
    </nav>
    <div class="container" >
    		<div class="row" style="height:100px"></div>
    		<div class="row">
    		<div class="col-2"></div>
   				 <div class="col-3">
   				 	<div class="row" style="height:50px"></div>
   				 	<div class="row">
                	<img src="/photo/taqdam-01.png" alt="logo">
                	<p class="fs-3">Create Your Project Now!<p>
                	</div>
                 </div>
                 <div class="col-3 form">
                    <h3 style="color: white;">Create Your Project</h3>
                
                <form:form method="POST" action="/create/project" modelAttribute="project">
                    <p><form:errors path="project.*"/></p>
                    
                    <div class="row mb-3">
                            <form:input placeholder="Title"  path="title"/>                       
                    </div>
                    <div class="row mb-3">                  
                            <form:input placeholder="Field" path="field"/>                  
                    </div>
                    <div class="row mb-3">             
                            <form:input placeholder="Description" path="description"/>                     
                    </div>
                    <div class="row mb-3">                   
                       <form:input placeholder="Tech" path="tech"/>                   
                    </div>
                    <div class="row mb-3">
                    <input type="submit" class="btn btn-warning mb-3" value="Create"/>
                    </div>
                    </form:form>
                    </div> 
                   </div>
           
        </div>
</body>
</html>