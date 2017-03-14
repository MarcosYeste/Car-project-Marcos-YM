<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="row">
	<form:form modelAttribute="car" cssClass="form-horizontal">
		<div class="form-group">
			<form:label cssClass="col-sm-3 control-label" path="matricula">Matricula</form:label>
			<div class="col-sm-4">
			<form:input cssClass="form-control" path="matricula" />
			<form:errors path="matricula"/>
			</div>
		</div>
		<div class="form-group">
			<form:label cssClass="col-sm-3 control-label" path="modelo">Modelo</form:label>
			<div class="col-sm-4">
			<form:input cssClass="form-control" path="modelo" />
			<form:errors path="modelo"/>
			</div>
		</div>
		<div class="form-group">
			<form:label cssClass="col-sm-3 control-label" path="fechaMatriculacion">FechaMatriculacion</form:label>
			<div class="col-sm-4">
			<form:input cssClass="form-control" path="fechaMatriculacion" />
			<form:errors path="fechaMatriculacion"/>
		</div>
		</div>
		<div class="form-group">
			<form:label cssClass="col-sm-3 control-label" path="km">Km</form:label>
			<div class="col-sm-4">
			<form:input cssClass="form-control" path="km" />
			<form:errors path="km"/>
			</div>
		</div>
		<div class="form-group">
			<form:label cssClass="col-sm-3 control-label" path="precio">Precio</form:label>
			<div class="col-sm-4">
			<form:input cssClass="form-control" path="precio" />
			<form:errors path="precio"/>
		</div>
		</div>
		
		<div class="col-sm-8"><button type="submit"  class="btn btn-primary">SAVE</button></div>
		


	</form:form>
	</div>
</body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</html>