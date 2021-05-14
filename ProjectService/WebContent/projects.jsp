<%@page import="model.Project"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Projects Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.js"></script>
<script src="Components/projects.js"></script>
</head>
<body> 
<div class="container"><div class="row"><div class="col-6"> 
<h1>Gadgetbadget Project Management</h1>
<form id="formProject" name="formProject">
 Project name: 
 <input id="projName" name="projName" type="text" class="form-control form-control-sm">
 <br> Project Subject: 
 <input id="projSubject" name="projSubject" type="text" class="form-control form-control-sm">
 <br> Project price: 
 <input id="projPrice" name="projPrice" type="text" class="form-control form-control-sm">
 <br> Project description: 
 <input id="projDesc" name="projDesc" type="text" class="form-control form-control-sm">
 <br>
 <input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
 <input type="hidden" id="hidProjectIDSave" name="hidProjectIDSave" value="">
</form>
<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>
<br>
<div id="divProjectsGrid">
 <%
      Project projectObj = new Project(); 
      out.print(projectObj.readProjects()); 
 %>
</div>
</div> </div> </div> 
</body>
</html>