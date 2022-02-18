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
  <form action="" id="form"> 
  	
  </form>
    <header>
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <a class="navbar-brand" href="index.html"><img src="/resources/img/logo.svg" style="width: 150px" /></a>
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
                <a href="http://localhost:8080/board/aboutUs" class="nav-link" href="about.html">About Us</a>
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
                <a href="http://localhost:8080/board/login.html" class="nav-link">LogIn</a>
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
        <div class="keyboard">
          <img src="/resources/img/keyboard.svg" alt="">
        </div>
        <div class="typewriter">
          <div class="writeSetting">
            <h1>이제 글을 써 볼까?</h1>
            <button  id="writing_setting">click</button>
          </div>
          <img src="/resources/img/typewriter.svg">
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
      header {
        height: -0.5vh;
      }

      .container-fluid {
        padding: 0 30px;
      }
      .navbar-toggler {
        border: none !important;
        outline: none !important;
      }

      .navbar-toggler:focus {
        box-shadow: none;
      }

      content {
        width: 100vw;
        height: 70vh;
      }

      .content-background {
        position: relative;
      }
      .writeSetting {
        width: 38%;
        display: flex;
        position: absolute;
        left: 45%;
        top: 18%;
        transform: translateX(-50%);
      }
      
      .writeSetting button{
        margin-left: 25px;
        font-size: 0.8rem;
        border: none;
        border-radius: 50%;
        width: 50px;
        height: 50px;
        margin-top: -15px;
        opacity: 0;
        transition: all 1s;
      }
      @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Comforter+Brush&display=swap');
      .writeSetting a{
        text-decoration: none;
        font-size: 28px;
        font-family: 'Black Han Sans', sans-serif;
        position: relative;
        top: 13px;
        left: -27px;
        color: white;
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
          top: 4px;
          left: 10px;
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
      .keyboard {
        opacity: 0;
        width: 90%;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
        position: absolute;
        z-index: 1;
        background-color: white;
      }
      .writeSetting h1{
        font-family: 'Hahmlet', serif;
        font-size: 1rem;
        overflow: hidden;
        border-right: 0.15em solid orange;
        white-space: nowrap;
        margin-left: 50px;
        letter-spacing: .15em;
        animation: typing 3s steps(30, end) 3s,
                   blink-caret .5s step-end infinite;
        
      }
      @keyframes typing{
        from {
          width: 0;
          opacity:0;
        }
        to{
          width: 60%;
          opacity:1;
        }
      }
      .typewriter{
        position: absolute;
        opacity: 0;
        min-width: 800px;
        width: 50%;
        bottom: 0%;
        transform: translate(-50%, 33%);
        left: 52%;
        z-index: 4;
        text-align: right;
        animation-name: move1;
        animation-delay: 3s;
        animation-duration: 4s;
        animation-direction: alternate;
        animation-play-state: running;
        animation-fill-mode: forwards;
      }

      @keyframes move1 {
        from {
          opacity: 1;
          bottom: -10vh;
          z-index: -50;
        }
        to {
          opacity: 1;
          bottom: 11vh;
          z-index: 1;
        }
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
        z-index: 2;
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
        z-index: 0;
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
      .writeSetting button{
        margin-left:25px; 
        font-size: 0.8rem;
        border:none; border-radius: 50%;
        width:50px; height:50px;
        margin-top:-15px;
        opacity:0;
        transition: all 1s;
        transition-delay: 4s;
      }
        @keyframes blink-caret{
            from, to{border-color: transparent}
            50% {border-color: orange}
        }
      .transition {
            transition: all 1s;
            opacity: 1 !important;
        }
    </style>

    <script>
      // new Splide('.splide').mount();
      $(document).ready(function(e){
    	  //onclick="location='write_setting.html'"
    		  $('.navbar-toggler').on('click', function () {
    		        var menuIcon = $('#menu-icon')
    		        menuIcon.toggleClass('fa fa-bars')
    		        menuIcon.toggleClass('fa fa-times')

    		        console.log('먹나?')
    		      })//click 
    		      $('.keyboard').animate({ opacity: 1 }, 2000)
    		      $('.keyboard').animate({ opacity: 0 }, 1500)

    		      const loremIpsum = $("#lorem-ipsum")//id가 "lorem-ipsum"인것을 가져와라
    		      const modal = $("#modal") 
    		      const btnModal = $("#btn-modal")
    		      const closeBtn = $(".close-area")
    		      //onclick="location='write_setting.html'"
    		      $("#writing_setting").click(function(e){
    		    	  console.log("사랑");
    		    	  $("form").attr("action",'writing_setting').submit();
    		      })
    		      btnModal.click(e => {
    		          modal.style.display = "flex"
    		      })
    		      closeBtn.click( e => {
    		          modal.style.display = "none"
    		      })
    		      
    		      const buttonWrite = $(".writeSetting button");
    		      setTimeout(function(){
    		          buttonWrite.addClass('transition')
    		      }, 3000)
      })
        
    </script>
  </body>
</html>
