<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DanielSilvaol
  Date: 15/03/2019
  Time: 00:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais - Casa do Código</title>
</head>
<body>
<form action="/casadocodigo_war_exploded/produtos" method="post">
    <div>
        <label>Titulo</label>
        <input type="text" name="titulo">
    </div>
    <div>
        <label>Descrição</label>
        <textarea name="descricao" cols="30" rows="10"></textarea>
    </div>
    <div>
        <label>Paginas</label>
        <input type="text" name="paginas">
    </div>
    <c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
        <div>
            <label>${tipoPreco}</label>
            <input type="text" name="precos[${status.index}].valor">
            <input type="hidden" name="precos[${status.index}].tipo" value="${tipoPreco}">
        </div>
    </c:forEach>

    <button type="submit">Cadastrar</button>
</form>
</body>
</html>
