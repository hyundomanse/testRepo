<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Hahmlet:wght@500&display=swap" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="/resources/mypage.css">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
              <a class="navbar-brand" href="index"><img src="/resources/img/logo.svg" style="width:150px" /></a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <i id="menu-icon" class="fa fa-bars"></i>

              </button>
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav" style="margin: 0 auto; align-items: flex-end;">
                  <li class="nav-item">
                    <a href="aboutUs" class="nav-link">About Us</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/board/neweditor?mno=${board.mno}">새 글쓰기</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link disabled">Publishing</a>
                  </li>
                </ul> 
                 <h5>${board.name } 님 안녕하세요</h5>
                <ul class="navbar-nav" style="align-items: flex-end;">  
                  <li class="nav-item">
                    <a class="nav-link" href='/board/index'>LogOut</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href='/board/mypage?mno=${board.mno}'>MyPage</a>
                  </li>
                </ul>
               
              </div>
            </div>
          </nav>
    </header>
    <content>
        <div class="background-img">
            <div class="new_write">
                <img src="/resources/img/bookshelves.svg">   
                <div class="new-writing">
                    <a href="/board/neweditor?mno=${board.mno}"><img src="/resources/img/typewriter.svg"></a>
                </div>                             
            </div>
        </div>  
        
		<div class="mypageDiv">
          <c:forEach items="${list}" var="board" varStatus="status" begin="0" end="7">
	         <div>
              <span><a href='/board/read?bno=${board.bno}'>${board.bno}</a></span>
              <span>${board.title}</span>
              <span>${board.writer}</span>            
	        </div>      
          </c:forEach>
		</div>   
              
    </content>
    <footer>
        <div class="footer-container">
            <div class="footer-box">
                <ul class="footer-list">
                    <li>Agreement</li>
                    <li>About us</li>
                    <li>Premium</li>
                </ul>
                <small>Copyright@whys allrights resrved.</small>
            </div>
        </div>

    </footer>
  
  <style>
  	.mypageDiv{
	    z-index: 2;
	    display: inline-block;
	    left: 50% !important;
	    position: absolute !important;
	    top: 50% !important;
	    transform: translate(-50%, -50%);	
  	}
  	
  	.firstDiv{
		width: 100px !important;
	    transform: translateX(38%);
	    /* display: grid; */
	    /* width: 28%; */
	    top: -65px;
	    width: 10vw;
	    left: -250px;
	    position: absolute;
  	}
  	  .secondDiv{
  	  	width: 80px;
		left: -57px;
    	top: -65px;
	     position: absolute;  	  	
  	  	}
  	
  	  .thirdDiv{
	    width: 85px;
	    left: 114px;
	    position: absolute;
	    top: -65px;  	
  	  	}
  	  	
   	  .fourthDiv{
	    width: 30px;
	    position: absolute;
	    left: -180px;
	    top: 130px;
  	  	}
  	  .fourthDiv span:nth-child(2){
		overflow: hidden;
	    height: 100px;
	    display: block;
	    text-overflow: clip;
  	  }
  	  	  	
  	  .fifthDiv{
		text-overflow: ellipsis;
	    height: 120px;
	    width: 22px;
	    top: 130px;
	    position: absolute;
	    left: -112px;
  	  	}
  	  	
  	  .fifthDiv span:nth-child(2){
		overflow: hidden;
	    height: 100px;
	    display: block;
	    text-overflow: clip;
  	  }
  	  	
  	  .sixthDiv{
	    display: inline-block;
	    position: absolute;
	    top: 126px;
	    width: 30px;
	    left: -45px;
		}	
  	  
  	  .sixthDiv span:nth-child(2){
		overflow: hidden;
	    height: 100px;
	    display: block;
	    text-overflow: clip;
  	  }
  	   	
  	   .seventhDiv{   
	    display: inline-block;
	    position: absolute;
	    top: 126px;
	    width: 30px;
	    left: 50px;
		}  	
  	  	
  	  .seventhDiv span:nth-child(2){
		overflow: hidden;
	    height: 100px;
	    display: block;
	    text-overflow: clip;
  	  }
  	  	
       .eightDiv{
	    display: inline-block;
	    position: absolute;
	    top: 126px;
	    width: 30px;
	    left: 123px;
		}
		  	
  	  .eightDiv span:nth-child(2){
		overflow: hidden;
	    height: 100px;
	    display: block;
	    text-overflow: clip;
  	  }		  
  	  	 	  	
  </style>

  <script>
  $(document).ready(function(){
    $('.mypageDiv').children().eq(0).addClass('firstDiv');
    $('.mypageDiv').children().eq(1).addClass('secondDiv');	
    $('.mypageDiv').children().eq(2).addClass('thirdDiv'); 
    $('.mypageDiv').children().eq(3).addClass('fourthDiv'); 
    $('.mypageDiv').children().eq(4).addClass('fifthDiv'); 
    $('.mypageDiv').children().eq(5).addClass('sixthDiv'); 
    $('.mypageDiv').children().eq(6).addClass('seventhDiv'); 
    $('.mypageDiv').children().eq(7).addClass('eightDiv'); 
    
  });
  
  </script>
</body>
</html>