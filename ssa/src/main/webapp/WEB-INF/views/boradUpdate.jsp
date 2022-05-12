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
            <form class="form-horizontal" action="/myapp/boardUpdate.do" method = "post">
            <input type="hidden" value="${vo.idx}" name="idx">
               <div class="form-group">
                  <label class="control-label col-sm-2" for="title">제목:</label>
                  <div class="col-sm-10">
                     <input type="text" class="form-control" id="title" name ="title"
                        value="${vo.title}">
                  </div>
               </div>
               <div class="form-group">
                  <label class="control-label col-sm-2" for="content">내용:</label>
                  <div class="col-sm-10">
                     <textarea rows="10" class="form-control" name="content">${vo.content}</textarea>
                  </div>
               </div>
               <div class="form-group">
                  <label class="control-label col-sm-2" for="writer">작성자:</label>
                  <div class="col-sm-10">
                     <input type="text" class="form-control" id="writer" name ="writer"
                        value ="${vo.writer}" readonly="readonly">
                  </div>
               </div>
               
               <div class="form-group">
                  <div class="col-sm-offset-2 col-sm-10">
                     <button type="submit" class="btn btn-success btn-sm" >등록</button>
                     <button type="reset" class="btn btn-warning btn-sm">취소</button>
                  </div>
               </div>
            </form>
         </div>
         <div class="panel-footer">지능형 IoT융합 SW전문가 과정</div>
      </div>
   </div>
</body>
</html>