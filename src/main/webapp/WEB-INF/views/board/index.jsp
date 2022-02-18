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
    <!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script> -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script> -->
    <script src="/resources/splide-3.2.6/dist/js/splide.min.js"></script>
    <link href="/resources/splide-3.2.6/dist/css/themes/splide-default.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/index-style.css">
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
                    <a class="nav-link writing" href="#">Writing</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link disabled">Publishing</a>
                  </li>
                </ul> 
                
                <ul class="navbar-nav" style="align-items: flex-end;">  
                  <li class="nav-item">
                    <a class="nav-link" href='/board/login'>LogIn</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href='/board/signUp'>signUp</a>
                  </li> 
                </ul>
              </div>
            </div>
          </nav>
    </header>
    <content>
       <div class="splide-position">
            <div class="splide">
                <div class="splide__track">
                    <ul class="splide__list">
                        <li class="splide__slide">
                            <div class="splide-container">
                                <div class="slide-section01">
                                    <p>모든 기록이 이야기가 되고<br>모든 이야기가 작품이 되는 곳</p>
                                </div>
                                <div class="slide-section02"><img src="/resources/img/logo_w.svg"></div>
                                <div  class="slide-section03">
                                    <img src="/resources/img/img01.jpg"/>
                                </div>
                                <button class="slide-btn writing" type="submit">나만의 기록창고 Allwrite 바로 시작하기</button>
                            </div>
                        </li>
                        <li class="splide__slide">
                            <div class="splide-container">
                                <div class="slide-section01" style="width: 480px !important">
                                    <p>자신의 이야기를 출판물처럼 바로 출력할 수 있어요.<br>
                                    근사한 레이아웃으로 자신의 글에 옷을 입혀보세요.</p>
                                </div>
                        
                                <div  class="slide-section03">
                                    <img src="/resources/img/img02.svg"/>
                                </div>
                                <button class="slide-btn writing" type="submit">나만의 기록창고 Allwrite 바로 시작하기</button>
                            </div>
                        </li>     
                        <li class="splide__slide">
                            <div class="splide-container">
                                <div class="slide-section01" style="width: 380px !important">
                                    <p>유료 서비스를 이용하시면, E-Book에서<br>종이 서적까지<br>
                                    제작, 유통 해드립니다.</p>
                                </div>
                                <div  class="slide-section03" style="right:117px !important">
                                    <img src="/resources/img/img03.svg" style="width:80%;"/>
                                </div>
                                <button class="slide-btn writing" type="submit">나만의 기록창고 Allwrite 바로 시작하기</button>
                            </div>
                        </li>             
                    </ul>
                </div>
            </div>
        </div> 


    <div class="content-background">   
        <div class='line'></div>
        <hr><hr><hr><hr><hr>
        <hr><hr><hr><hr><hr>
        <div class="dot1">
            <img src="/resources/img/dot.svg"/>
        </div>
        <div class="comma1">
            <img src="/resources/img/comma.svg"/>
        </div>
        <div class="dot2">
            <img src="/resources/img/dot.svg"/>
        </div>       
        <div class="type-container">
            <img class="type" src="/resources/img/typewriter.png">
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
        new Splide('.splide', {
            type: 'loop',
            autoplay:true,
            interval: 5000
        }).mount();


        $('.navbar-toggler').on('click', function(){
            var menuIcon = $("#menu-icon");
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