<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Title</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            text-align: center;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: bold;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }
    </style>
</head>
<body>
<a href="../../index.jsp">Menu</a>

<h1>Search user</h1>

<c:url var="searchAction" value="/search"/>
<form:form action="${searchAction}">

    <tr>
        <input type="text" name="searchTerm">
    </tr>
    <tr>
        <td colspan="3">
            <input type="submit"
                   value="Find user by ID">
        </td>
    </tr>
</form:form>

<h1>User list</h1>

<c:if test="${!empty list}">
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">Name</th>
            <th width="120">Age</th>
            <th width="120">Is admin</th>
            <th width="120">Create date</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${list}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.age}</td>
                <td>${user.admin}</td>
                <td>${user.createDate}</td>
                <td><a href="<c:url value="/edit/${user.id}"/>">Edit</a></td>
                <td><a href="<c:url value="/remove/${user.id}"/>">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <br/>
    <a href="/users/1">1</a>
    <a href="/users/2">2</a>
    <a href="/users/3">3</a>
</c:if>


<h1>Add a user</h1>

<c:url var="addAction" value="/users/add"/>
<form:form action="${addAction}" commandName="user">
    <table>
        <c:if test="${!empty user.name}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="id" readonly="true" size="8" disabled="true"/>
                    <form:hidden path="id"/>
                </td>
            </tr>
        </c:if>
        <tr>
            <td><spring:message text="Name"/></td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td><spring:message text="Age"/></td>
            <td><input type="text" name="age"></td>
        </tr>
        <tr>
            <td><spring:message text="Is admin"/></td>
            <td><input type="text" name="admin"></td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty user.name}">
                    <input type="submit"
                           value="<spring:message text="Edit user"/>"/>
                </c:if>
                <c:if test="${empty user.name}">
                    <input type="submit"
                           value="<spring:message text="Add user"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>