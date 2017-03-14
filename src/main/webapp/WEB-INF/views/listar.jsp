<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CARS</title>
</head>
<body>
 <a href="add" class="btn btn-primary" role="button"><i class="fa fa-plus" aria-hidden="true"></i>Add Car</a>

<table class="table table-striped">
        <tr>
            <th>Modelo</th>
            <th>Fecha de Matriculacion</th>
            <th>KM</th>
            <th>Precio</th>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                
                <td><c:out value="${car.modelo}"></c:out></td>
                <td><c:out value="${car.fechaMatriculacion}"></c:out></td>
                <td><c:out value="${car.km}"></c:out></td>
                <td><c:out value="${car.precio}"></c:out></td>
                <td><a href="edit/${car.matricula}" >Modificar</a></td>  

            </tr>
        </c:forEach>
    </table>
   
</body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</html>