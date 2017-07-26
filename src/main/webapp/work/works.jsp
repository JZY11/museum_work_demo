<%--
  Created by IntelliJ IDEA.
  User: Tony.Jaa
  Date: 2017/7/26
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/commons/inc.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <%-- TODO:大的--%>
        <th>COUNT</th>
        <th>TITLE</th>
        <th>ARTIST</th>
        <th>PICTURE</th>
        <th>YEAR</th>
        <th>MUSEUM</th>
    </tr>
    <c:forEach var="work" items="${sessionScope.pagination.list}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>${work.title}</td>
            <td>${work.artist}</td>
            <td>${work.price}</td>
            <td>${work.year}</td>
            <td>${work.museum.name}</td>
        </tr>
    </c:forEach>
</table>
<c:import url="${ctx}/commons/page.jsp">
    <c:param name="path" value="museum/${sessionScope.pagination.statement}"/>
</c:import>
</body>
</html>