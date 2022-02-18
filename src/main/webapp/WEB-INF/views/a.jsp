<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
	안녕
	<div>${bno}</div>
	
	<ul>
	
	</ul>
	
	<script>
		$(document).ready(function(){
			var bno = $('div').text()
			console.log(bno);
			const fn= function(){
				$.getJSON('/getAttachList', {bno}, function(result){
				console.log("여기 호출되나 ", result)
					var fileCallPath = encodeURIComponent(result.uploadPath+'/s_'+result.uuid+'_'+result.fileName)
					var str = '<li> <img src=/display?fileName='+ fileCallPath+'/> </li>';
					$('ul').html(str);
				});
			}
			fn();
		})
			
	
	</script>
</body>
</html>