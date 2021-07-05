<%@page import="notice.vo.Notice"%>
<%@page import="java.util.List"%>
<%@page import="notice.dao.NoticeDao"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
	request.setCharacterEncoding("utf-8");
%>
<%

  NoticeDao dao=new NoticeDao();//3번
  List<Notice> list=dao.getNotices();
  /* 1번 String sql="select * from notices order by to_number(seq) desc";
//db connect
//드라이버로드
Class.forName("oracle.jdbc.driver.OracleDriver");
//접속
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="111111";
Connection con=DriverManager.getConnection(url, user, pw);
//실행
Statement st=con.createStatement();
//결과
ResultSet rs=st.executeQuery(sql); */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<!-- insertPro.jsp?id=blue&ps=111111&name=%ED%99%8D%EA%B8%B8%EB%8F%99&addr=22222 -->
<table width="500" border="1">
	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>작성자</td>
		<td>작성일</td>
		<td>조회수</td>
	</tr>
	
	<c:forEach items="${list }" var="n">
	<td>${n.seq }</td>
		<td><a href="noticeDetail.do?c=${n.seq }&h=${n.hit }">${n.title }</a></td>
		<td>${n.writer }</td>
		<td>${n.regdate }</td>
		<td>${n.hit }</td>
	</tr>
	</c:forEach>

</table>
<a href="noticeReg.do">Write</a>
</body>
</html>

<%-- <%
//rs.close();
//st.close();
//con.close();
%> --%>