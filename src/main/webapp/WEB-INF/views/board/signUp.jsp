<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Hahmlet:wght@500&display=swap" rel="stylesheet" />

    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="/resources/signup.css">
  </head>
  <body>
    <header>
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <a class="navbar-brand" href="index"><img src="/resources/img/logo.svg" style="width: 150px" /></a>
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
                <a class="nav-link writing" href="#">Writing</a>
              </li>
              <div id="btn-modal">
                <li class="nav-item">
                  <a class="nav-link">Publishing</a>
                </li>
              </div>
            </ul>
            <ul class="navbar-nav" style="align-items: flex-end">
              <li class="nav-item">
                <a href="login.html" class="nav-link">LogIn</a>
              </li>
              
            </ul>
          </div>
        </div>
      </nav>
    </header>

    <content>
      <div class="content-background">

        <div class="container">
          <div class="login-form-container shadow">
            <div class="login-form-left-side">
              <div class="login-img-logo" style="text-align: center;">
                <img src="/resources/img/m_writer.svg"/>
               <h3>Writer</h3>
              </div>
            </div>
            <div class="login-form-right-side">
              <div class="login-text">Sign Up</div>
	             <form action="signUp" method="post">
	              <div class="login-input-container">
	                <div class="login-input-wrap input-name">
	                  <input placeholder="NAME" type="text" name="name" />
	                </div>
	                <div class="login-input-wrap input-id">
	                  <input placeholder="ID" type="text" name="id"/>
	                </div>
	                <div class="login-input-wrap input-password">
	                  <input placeholder="PASSWORD" type="text" name="password"/>
	                </div>
	                <div class="login-input-wrap input-confirm">
	                  <input placeholder="Password Confirm" type="text" name="confirm" />
	                </div>
	                <div class="login-input-wrap input-email">
	                  <input placeholder="EMAIL" type="text" name="email"/>
	                </div>
	                <div class="login-input-wrap input-mobile">
	                  <input placeholder="MobileNumber" type="text" name="mobileNumber"/>
	                </div>
	                <div class="login-input-wrap input-nickName">
	                  <input placeholder="NickName" type="text" name="nickName"/>
	                </div>
	               </div>
	                <button class="signBtn" type="submit">SignUp</button>
	              </form>
             </div>
          </div>       
          
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
            <li>About us</li>
            <li>Premium</li>
          </ul>
          <small>Copyright@whys allrights resrved.</small>
        </div>
      </div>
    </footer>
    
    <script>
    /****
      $('.navbar-toggler').on('click', function () {
        var menuIcon = $('#menu-icon')
        menuIcon.toggleClass('fa fa-bars')
        menuIcon.toggleClass('fa fa-times')
      })
      const loremIpsum = document.getElementById("lorem-ipsum")//id가 "lorem-ipsum"인것을 가져와라
      const modal = document.getElementById("modal") 
      const btnModal = document.getElementById("btn-modal")
      
      const closeBtn = modal.querySelector(".close-area") 
      btnModal.addEventListener("click", e => {
          modal.style.display = "flex"
      })
      closeBtn.addEventListener("click", e => {
          modal.style.display = "none"
      })
     **/
     
     $('.writing').click(function(e){
   	  e.preventDefault();
   	  alert("로그인을 먼저 해주세요.")
     })   
    </script>
  </body>
</html>
