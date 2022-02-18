<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="/resources/aboutus.css">
</head>

<body>
    <header>
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <a class="navbar-brand" href="index"><img src="/resources/img/logo.svg" style="width: 150px"
          /></a>
          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarNav"
            aria-controls="navbarNav"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <i id="menu-icon" class="fa fa-bars"></i>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav" style="margin: 0 auto; align-items: flex-end">
              <li class="nav-item">
                <a href="aboutUs" class="nav-link">About Us</a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link writing">Writing</a>
              </li>
              <div id="btn-modal">
                <li class="nav-item">
                  <a class="nav-link">Publishing</a>
                </li>
              </div>
            </ul>
            <ul class="navbar-nav" style="align-items: flex-end">
              <li class="nav-item">
                <a href="http://localhost:8080/board/login.html" class="nav-link">LogIn</a>
              </li>
              <li class="nav-item">
                <a href="http://localhost:8080/board/signUp" class="nav-link">SignIn</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>
    <content>
    
    <div id="modal" class="modal-overlay">
        <div class="modal-window">
            <div class="close-area">
              <p>닫기</p>
            </div>
            <div class="content">
                <p>유료 서비스를 이용하시면,전문적인 퍼블리싱에 대한</p>
                <p>상담,제작,유통까지 친절하게 안내해드립니다.</p>
            </div>
        </div>
      </div>
      
      <div class="content-background">
        <div class="memberbox1">
          <img class="memberImg1" src="/resources/img/member1.png" />
          <p class="memberText1">Son<br />FrontEnd Developer</p>
        </div>
      
        <div class="memberbox3">
          <img class="memberImg3" src="/resources/img/member3.png" alt="Member Image1" />
          <p class="memberText3">Jo<br />FrontEnd Developer</p>
        </div>
        <div class="memberbox4">
          <img class="memberImg4" src="/resources/img/member4.png" alt="Member Image1" />
          <p class="memberText4">Lee<br />Designer</p>
        </div>

        <hr />
        <hr />
        <hr />
        <hr />
        <hr />
        <hr />
        <hr />
        <hr />
        <hr />
        <hr />

        <div class="dot1">
          <img src="/resources/img/dot.svg" />
        </div>
        <div class="comma1">
          <img src="/resources/img/comma.svg" />
        </div>
        <div class="dot2">
          <img src="/resources/img/dot.svg" />
        </div>

        <div class="type-container">
          <img class="type" src="/resources/img/typewriter.png" />
        </div>
      </div>
    </content>
    <footer>
      <div class="footer-container">
        <div class="footer-box">
          <ul class="footer-list">
            <li>Agreement</li>
            <li><a class="nav-link1" href="http://localhost:8080/board/aboutUs" >About us</a></li>
            <li>Premium</li>
          </ul>
          <small>Copyright@whys allrights resrved.</small>
        </div>
      </div>
    </footer>


    <script>
      $('.navbar-toggler').on('click', function () {
        var menuIcon = $('#menu-icon')
        menuIcon.toggleClass('fa fa-bars')
        menuIcon.toggleClass('fa fa-times')
      })
      
      $('.writing').click(function(e){
	   	  e.preventDefault();
	   	  alert("로그인을 먼저 해주세요.")
      })  
    </script>
  </body>
</html>