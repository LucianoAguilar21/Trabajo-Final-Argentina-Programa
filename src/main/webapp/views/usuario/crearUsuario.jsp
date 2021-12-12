<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/partials/header.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/partials/navbar.jsp"></jsp:include>
	<main class="container-fluid p-4">

		<c:if test="${usuario != null && !usuario.isValido()}">
			<div class="alert alert-danger">
				<c:forEach items="${userinvalido.getErrors().values()}" var="error">
					<c:out value="${error}" />
				</c:forEach>
			</div>
		</c:if>

		<form action="/TurismoApp/crearUsuario.do" method="post">
			<jsp:include page="/views/usuario/formulario.jsp"></jsp:include>
		</form>
	</main>

</body>
</html>