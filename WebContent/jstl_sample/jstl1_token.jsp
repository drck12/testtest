<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
 <%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>   
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>jstl.jsp</h2>
<%--  <c:forTokens items="이름1,이름1,이름1,이름1,이름1" delims=",">
반복<br />
</c:forTokens>--%>
<%-- <c:forTokens var="name" items="이름1,이름1,이름1,이름1,이름1" delims=",">
${name }<br />
</c:forTokens> --%>

<!--<c:forTokens var="name" items="이름1,이름2,이름3,이름4,이름5" delims="," varStatus="st">
index:${st.index }<br />
current:${st.current }<br />
count:${st.count }<br />
first:${st.first }<br />
last:${st.last }<br />
begin:${st.begin }<br />
end:${st.end }<br />
step:${st.step }<br />
<hr />
</c:forTokens>
</body>
</html>-->

<!--<c:forTokens var="name" items="이름1,20/이름2,30/이름3,40/이름4,50/이름5" delims=",/" varStatus="st">
index:${st.index }<br />
current:${st.current }<br />
count:${st.count }<br />
first:${st.first }<br />
last:${st.last }<br />
begin:${st.begin }<br />
end:${st.end }<br />
step:${st.step }<br />
<hr />
</c:forTokens>
</body>
</html>-->


<c:forTokens var="name" items="이름1,20/이름2,30/이름3,40/이름4,50/이름5" delims=",/" varStatus="st" step="2">
index:${st.index }<br />
current:${st.current }<br />
count:${st.count }<br />
first:${st.first }<br />
last:${st.last }<br />
begin:${st.begin }<br />
end:${st.end }<br />
step:${st.step }<br />
<hr />
</c:forTokens>
</body>
</html>