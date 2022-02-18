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
    <!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script> -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script> -->
    <script src="splide-3.2.6/dist/js/splide.min.js"></script>
    <link href="splide-3.2.6/dist/css/themes/splide-default.min.css" rel="stylesheet" />
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
                <a class="nav-link" href="writing.html">Writing</a>
              </li>
              <div id="btn-modal">
                <li class="nav-item">
                  <a class="nav-link">Publishing</a>
                </li>
              </div>
            </ul>
            <ul class="navbar-nav" style="align-items: flex-end">
              <li class="nav-item">
                <a href="http://localhost:8080/board/login" class="nav-link">LogIn</a>
              </li>
              <li class="nav-item">
                <a href="http://localhost:8080/board/signUp" class="nav-link">SignUp</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>

    <content>
      <div class="content-background">
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
        <div class="container">
          <div class="line"></div>
          <div class="login-form-container shadow">
            <div class="login-form-left-side">
              <div class="login-img-logo">
                <img src="/resources/img/m_writer.svg"/>
                <img class="logo-writer" src="/resources/img/writer.png"/>
              </div>
            </div>
            <div class="login-form-right-side">
             <form action="/controller/user/login" name="LoginForm" method="post"> 
               <div class="login-text">Log In</div>
                 <div class="login-input-container">
                    <div class="login-input-wrap input-id">
                        <input placeholder="ID" type="text" required name="id" />
                    </div>
                    <div class="login-input-wrap input-password">
                    <input placeholder="Password" type="password" required name="pw"/>
                    </div>
                 </div>
                <div class="login-sign">
                    <div class="login-btn-signin">
                        <button class="login-btn" type="submit">Sign in</button>
                        <a href="/user/findPage">비밀번호를 잃어버리셨나요shd</a>
                    </div>
                    <div class="login-btn-signup">
                        <button onclick="location.href='/user/signupPage'" class="login-btn">Sign up</button>
                        <a href="/user/signupPage">아직회원이아니신가요?</a>
                    </div>
                </div>
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
    <style>
      
      * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
        font-family: 'Alata', sans-serif;
      }
      .container {
        position: absolute;
        width: 55%;
        left: 0%;
        transform: translate(50%, 0%);
        z-index: 1;
      }
      
      .login-form-container {
        background: #e3e2e1;
        width: 740px;
        height: 420px;
        display: flex;
        flex-direction: row;
        border-radius: 10px;
        position: relative;
      }
      .login-form-right-side {
        width: 70%;
        
        border-radius: 10px 0px 0px 10px;
        padding: 10px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        
        
      }
      .login-text {
        color: gray;
        opacity: 0.3;
        font-size: 45px;
        position: relative;
        left: 150px;
        top:0px;
      }
      .login-form-left-side {
        width: 33%;
        border-radius: 0px 10px 10px 0px;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 91px;
        position: relative;
        left: 45px;
        top: 45px;
      }
      .login-img-logo{
        width: 150px;
        border: 1px solid gray;
        border-radius: 9%;
        padding: 20%;
      }
      .login-img-logo .logo-writer{
        width: 120px;
        left: 5px;
      }
      .question{
        width: 104px;
      }
      .login-form-left-side .login-top-wrap span {
        color: gray;
        font-size: 11px;
        padding-right: 20px;
      }
      .login-form-left-side .login-top-wrap .create-account-btn {
        background: white;
        border: 0;
        width: 85px;
        height: 35px;
        font-size: 11px;
        color: #2178ff;
        border-radius: 3px;
      }
      .login-input-container {
        padding-top: 60px;
        width: 300px;
      }
      .login-input-container .login-input-wrap {
        width: 300px;
        height: 40px;
        border-radius: 2px;
        border-bottom: solid 2px #161616;
      }
      .login-input-container .login-input-wrap i {
        color: #2178ff;
        line-height: 45px;
      }

      .login-input-container .login-input-wrap input {
        background: none;

        border: none;
        line-height: 45px;
        padding-left: 10px;
        width: 267px;
      }
      .login-input-container .login-input-wrap input:focus {
        outline: none;
      }
      .login-sign{
        display: flex;
        justify-content: center;
      }
      .login-btn-signin ,.login-btn-signup{
        width: 150px;
        margin-top: 45px;
        display: flex;
        flex-direction: column;
        align-items: center;
      }
       
      .login-btn {
        color: white;
        width: 85px;
        border: 0;
        border-radius: 12px;
        background: rgb(12, 12, 12);
      }
      .login-btn-signin a,.login-btn-signup a,.send-email  {
        margin-top: 10px;
        text-decoration: none;
        font-size: 11px;
        color: black;
        
      }
      header {
        height: -0.5vh;
      }
      .container-fluid {
        padding: 0 30px;
      }
      
      content {
        width: 100vw;
        height: 70vh;
      }

      .content-background {
        position: relative;
      }
      #modal.modal-overlay {
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0;
            display: none;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background: rgba(255, 255, 255, 0.25);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            backdrop-filter: blur(1.5px);
            -webkit-backdrop-filter: blur(1.5px);
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.18);
            z-index: 2;
        }
        #modal .modal-window {
            background: black;
            backdrop-filter: blur( 13.5px );
            width: 500px;
            height: 200px;
            position: relative;
            top: -130px;
            padding: 10px;
        }
        #modal .close-area {
          position: relative;
          top: 134px;
          left: 24px;
          width: 50px;
          height: 30px;
          padding-right: 10px;
          cursor: pointer;
          color: white;
          background: rgb(28 149 143);
          border-radius: 12px;
        }
        #modal .close-area p{
          font-size: 15px;
          position: relative;
          top: 5px;
          left: 11px;
        }
        #modal .content {
          margin-top: 10px;
          margin-left: 18px;
          padding: 0px 10px;
          color: white;
          font-weight: 900;
          font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif
        }
        #btn-modal{
          cursor: pointer
        }
      .dot1,
      .dot2,
      .comma1 {
        opacity: 1;
        position: absolute;
      }
      .dot1 {
        top: 100px;
        width: 100px;
        left: 50px;
      }
      .dot2 {
        top: 50%;
        width: 50px;
        right: 0;
      }
      .comma1 {
        bottom: -14%;
        width: 30px;
        left: 29%;
      }
      .navbar {
        z-index: 1;
        padding-top: 25px;
        padding-bottom: 3%;
        border-bottom: 10px solid gray;
      }
      hr {
        margin: 60px 0;
      }

      .type {
        width: 10%;
        position: absolute;
        text-align: right;
        bottom: -9vh;
        right: 1vw;
        -webkit-box-reflect: below -2.5vw -webkit-gradient(
            linear,
            left top,
            left bottom,
            from(transparent),
            color-stop(0.45, transparent),
            to(rgba(255, 255, 255, 0.25))
          );
      }

      footer {
        height: 16.4vh;
        background-color: #d9d9d7;
      }

      .footer-container {
        padding-top: 3%;
      }

      .footer-list {
        min-width: 310px;
        display: flex;
        width: 15%;
        justify-content: space-between;
        margin: 0 auto;
      }

      .footer-list li {
        padding: 8px 16px;
        list-style: none;
        background-color: #000;
        color: #fff;
        border-radius: 30px;
        font-size: 0.8rem;
      }
      small {
        width: 300px;
        display: block;
        margin: 20px auto;
        transform: translateX(18%);
      }
    </style>

    <script>
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
    </script>
  </body>
</html>
