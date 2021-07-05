<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jstl_foreach</title>
</head>
<body>
<h1>jstl_foreach</h1>
<h2>리스트적용</h2>

<%
List<String> nameList= new ArrayList<String>(Arrays.asList("이름4","이름5","이름6"));
request.setAttribute("name3", nameList);
List<String> nameList2= new ArrayList<String>(Arrays.asList("이름7","이름8","이름9"));
request.setAttribute("name4", nameList);
%>
<%-- <c:forEach var="name" items="이름1,이름2,이름3">
<br />${name }
</c:forEach> --%>


<%-- <c:forEach var="name" items="${name3 }" varStatus="st">
<br />${st.count } : <c:out value="${name }" /> : ${name }
</c:forEach>  --%>


<%-- <c:forEach var="List3" items="${name3 }" varStatus="st">
<br />${List3 } : ${name4[st.index] } : ${st.index }
 </c:forEach>
 --%>


<%-- <c:forEach begin="0" end="9" var="i">
<br />${i}
 </c:forEach> --%>

<%--  <c:forEach begin="0" end="9" var="i" varStatus="st">
${i}
<c:if test="${not st.last }">,</c:if>
 </c:forEach> --%>
<c:set value="0" var="n"/>
<c:forEach begin="1" end="10" var="i" varStatus="st">
${i}
<c:set value="${n+i }" var="n"/>
<c:if test="${not st.last }">,</c:if>
 </c:forEach>
sum: ${n }
<br /><hr />
<c:set value="0" var="n" scope="application"/><!-- n이라는 공간이 누적되고있음, scope="application"가 없으면 기존의 영역을 무시하고 누적-->
<c:forEach begin="1" end="10" var="i" varStatus="st">
${i}
<c:set value="${n+i }" var="n"/>
<c:if test="${not st.last }">,</c:if>
 </c:forEach>
sum: ${n }
</body>
</html>