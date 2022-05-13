<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.ssa.domain.Board" %>
<%@page import="java.util.ArrayList" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
      <h2>Spring Web MVC 게시판</h2>
      <div class="panel panel-default">
         <div class="panel-heading">Board</div>
         <div class="panel-body">
         <table class="table table-bordered table-hover">
            <tr>
               <th>번호</th>
               <th>제목</th>
               <th>작성자</th>
               <th>작성일</th>
               <th>조회수</th>
            </tr>
            <c:forEach var ="vo" items="${list}">
            <tr>
               <td>${vo.idx}</td>
               <td><a href="/boardContent.do?idx=${vo.idx}">${vo.title}</a></td>
               <td>${vo.user_name}</td>
               <td>${vo.indate}</td>
               <td>${vo.count}</td>
            </tr>
            </c:forEach>
            <tr>
               <td colspan ="5">
                  <button class="btn btn-success btn-sm" onclick = "location.href ='/boardForm.do'">글쓰기</button>
               </td>
            </tr>
            
         </table>
         </div>
         <div class="panel-footer">지능형 IoT융합 SW전문가 과정</div>
      </div>
   </div>
</body>
</html>