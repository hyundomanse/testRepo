<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  		<form action="/board/modify" method="POST">
		  <div>
            <input name="bno" value="${board.bno}" />
          </div>
          <div>
            <input name="bname" value="${board.bname}" />
          </div>
          <div>
            <input name="bpassword" value="${board.bpassword}" />
          </div>
          <div>
            <textarea name="bmemo">${board.bmemo}</textarea>
          </div>

          <button data-oper="list" type="submit">modify</button>
        </form>


</body>
</html>