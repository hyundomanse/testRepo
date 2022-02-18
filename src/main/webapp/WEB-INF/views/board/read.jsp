<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
 <!DOCTYPE html>
<html lang="en" class="no-js demo-4">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>My Books</title>
		<meta name="description" content="Bookblock: A Content Flip Plugin - Demo 4" />
		<meta name="keywords" content="javascript, jquery, plugin, css3, flip, page, 3d, booklet, book, perspective" />
		<meta name="author" content="Codrops" />

		<link rel="stylesheet" type="text/css" href="/resources/BookBlock/css/default.css" />
		<link rel="stylesheet" type="text/css" href="/resources/BookBlock/css/bookblock.css" />
		<!-- custom demo style -->
		<link rel="stylesheet" type="text/css" href="/resources/BookBlock/css/demo4.css" />
		<script src="/resources/BookBlock/js/modernizr.custom.js"></script>
		
		<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    	<link rel="stylesheet" href="/resources/mypage.css">
		
	</head>
	<body>

   <header>
        <nav style="z-index:333 !important;" class="navbar navbar-expand-lg navbar-light bg-light">
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
                    <a class="nav-link" href="/board/neweditor?mno=${list.mno}">Writing</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link disabled">Publishing</a>
                  </li>
                </ul> 
                <ul class="navbar-nav" style="align-items: flex-end;">  
                  <li class="nav-item">
                    <a class="nav-link" href="/board/login">LogOut</a>
                  </li>
				  <li class="nav-item">
                    <a class="nav-link" href='/board/mypage?mno=${board.mno}'>MyPage</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
    </header>	
	
	<div class="container">
		<div class="bb-custom-wrapper">	
			<div id="bb-bookblock" class="bb-bookblock">
				<div class="bb-item">
					<div class="bb-custom-firstpage">
						<h6>${board.bno}</h6>
						<h1>${board.title}</h1>	
						<nav class="codrops-demos">
							<h4>${board.writer}</h4>
						</nav>
						<div id="img-aa">
							${list.bno}
							
						</div>
							
						
					</div>
					<div class="bb-custom-side">
						<div>${list.content}</div>
					</div>
					
					
				</div>
 									
				<div class="bb-item">
					<div class="bb-custom-side">
						<p>${list.content}</p>
					</div>
					<div class="bb-custom-side">
						<p>${list.content}</p>
					</div>
				</div>
				<div class="bb-item">
					<div class="bb-custom-side">
						<p>${board.content}</p>
					</div>
					<div class="bb-custom-side">
						<p>${board.content}</p>
					</div>
				</div>
				<div class="bb-item">
					<div class="bb-custom-side">
						<p>${board.content}</p>
					</div>
					<div class="bb-custom-side">
						<p>${board.content}</p>
					</div>
				</div>
				<div class="bb-item">
					<div class="bb-custom-side">
						<p>${board.content}</p>
					</div>
					<div class="bb-custom-side">
						<p>${board.content}</p>
					</div>
				</div>
			</div>

			<nav>
				<a id="bb-nav-first" href="#" class="bb-custom-icon bb-custom-icon-first">First page</a>
				<a id="bb-nav-prev" href="#" class="bb-custom-icon bb-custom-icon-arrow-left">Previous</a>
				<a id="bb-nav-next" href="#" class="bb-custom-icon bb-custom-icon-arrow-right">Next</a>
				<a id="bb-nav-last" href="#" class="bb-custom-icon bb-custom-icon-last">Last page</a>
			</nav>

		</div>
	
		<button class="mbtn"  type="submit" onclick="location.href='/board/editor?bno=${list.bno}'">Modify</button>
		 
		<style>
		
			.bb-custom-side{
			height: 600px; padding: 10px 50px;
			}
			
			
			
			.mbtn{
				position: absolute;
				right: 5%;
				bottom: 15%;
			    border-radius: 20px;
			    border: none;
			    z-index: 1000;
			    background-color: #000;
			    color: #fff;
			    padding: 5px 10px;
			}
		</style>
		
		</div><!-- /container -->
		
   <footer style="z-index: 333;">
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
		
		
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script src="/resources/BookBlock/js/jquerypp.custom.js"></script>
		<script src="/resources/BookBlock/js/jquery.bookblock.js"></script>
		<script>
		
		$(document).ready(function(){
			var bno = $('#img-aa').text()
			console.log(bno);
			const fn= function(){
				$.getJSON('/getAttachList', {bno}, function(result){
				console.log("여기 호출되나 ", result)
					var fileCallPath = encodeURIComponent(result.uploadPath+'/s_'+result.uuid+'_'+result.fileName)
					var str = '<li> <img src=/display?fileName='+ fileCallPath+'/> </li>';
					$('#img-aa').html(str);
				});
			}
			fn();
		})
		
		
		
			var Page = (function() {
				
				var config = {
						$bookBlock : $( '#bb-bookblock' ),
						$navNext : $( '#bb-nav-next' ),
						$navPrev : $( '#bb-nav-prev' ),
						$navFirst : $( '#bb-nav-first' ),
						$navLast : $( '#bb-nav-last' )
					},
					init = function() {
						config.$bookBlock.bookblock( {
							speed : 1000,
							shadowSides : 0.8,
							shadowFlip : 0.4
						} );
						initEvents();
					},
					initEvents = function() {
						
						var $slides = config.$bookBlock.children();

						// add navigation events
						config.$navNext.on( 'click touchstart', function() {
							config.$bookBlock.bookblock( 'next' );
							return false;
						} );

						config.$navPrev.on( 'click touchstart', function() {
							config.$bookBlock.bookblock( 'prev' );
							return false;
						} );

						config.$navFirst.on( 'click touchstart', function() {
							config.$bookBlock.bookblock( 'first' );
							return false;
						} );

						config.$navLast.on( 'click touchstart', function() {
							config.$bookBlock.bookblock( 'last' );
							return false;
						} );
						
						// add swipe events
						$slides.on( {
							'swipeleft' : function( event ) {
								config.$bookBlock.bookblock( 'next' );
								return false;
							},
							'swiperight' : function( event ) {
								config.$bookBlock.bookblock( 'prev' );
								return false;
							}
						} );

						// add keyboard events
						$( document ).keydown( function(e) {
							var keyCode = e.keyCode || e.which,
								arrow = {
									left : 37,
									up : 38,
									right : 39,
									down : 40
								};

							switch (keyCode) {
								case arrow.left:
									config.$bookBlock.bookblock( 'prev' );
									break;
								case arrow.right:
									config.$bookBlock.bookblock( 'next' );
									break;
							}
						} );
					};

					return { init : init };

			})();
		</script>
		<script>
				Page.init();
		</script>
	</body>
</html>