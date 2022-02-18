<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>JavaScript Rich Text Editor | webdevtrick.com</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/all.css" />
   	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  </head>
<style>
	.drag-over {
	background-color: #ff0;
	}
</style>
<body onload="enableEditMode()">
	
	<div class="title-box">
      <div class="bar"></div>
      <input class="title" type="text" placeholder="TITLE" />
    </div>
    <div class="menu">
      <div class="menu1">
        <button onclick="Edit('bold')" title="bold"><i class="fa fa-bold"></i></button>
        <button onclick="Edit('italic')" title="italic"><i class="fa fa-italic"></i></button>
        <button onclick="Edit('underline')" title="underline"><i class="fa fa-underline"></i></button>
        <button onclick="Edit('line-through')" title="strikeThrough"><i class="fa fa-strikethrough"></i></button>
        <button onclick="Edit('left')" title="Align Left"><i class="fa fa-align-left"></i></button>
        <button onclick="Edit('center')" title="Align Center"><i class="fa fa-align-center"></i></button>
        <button onclick="Edit('right')" title="justify"><i class="fa fa-align-justify"></i></button>
      	<br/>
       
        <select id="fontSize">
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
          </select><label>C</label>
      </div>
    </div>

    <textarea class="drag-area">
	      			
	</textarea>
	<div id="img">
	</div>
	<div class="write-btns">
      <button class="s-btn" type="button">Save</button>
      <button class="c-btn" type="button">Cancel</button>
    </div>
    <div class="row box">
		<div class="col-lg-12">
			<div class="panel panel-default">
				
				<form action="/board/boardmodify" method="post">
				
					<div class="form-group">
						<label>Mno</label> <input class="form-control" name='mno'
							value="${board.mno}" readonly="readonly">
					</div>				
				
					<div class="form-group">
						<label>Bno</label> <input class="form-control" name='bno'
							value="${board.bno}" readonly="readonly">
					</div>
	
					<div class="form-group">
						<label>Title</label> <input class="copytitle" name='title'
							value="${board.title}">
					</div>
	
					<div class="form-group">
						<label>Text area</label> <textarea class="form-control" rows="3" name='content'
							>${board.content}</textarea>
					</div>
	
					<div class="form-group">
						<label>작성자</label> <input class="form-control" name='writer'
							value="${board.writer}" readonly="readonly">
					</div>
				</form>	
					
			</div>
   		</div>
   	</div>
	 
    <script type="text/javascript">
    function Edit(command) {
	        //richTextField.document.execCommand(command, false, null)
	        console.log(command)
	       	if(command=='bold'){
	       		$('textarea').css('font-weight', command);
	       	}else if(command=='italic'){
	       		$('textarea').css('font-style', command);
	       	}else if(command=='underline' || command=='line-through' ){
	       		$('textarea').css('text-decoration', command);
	       	}else if(command=='left' || command=='right' || command=='center'){
	       		$('textarea').css('text-align', command);
	       	}
	      }
	    function enableEditMode() {
	    	$('body').designMode = 'on'
	        
	      }
	   
	    (function () {
	        var bno = '<c:out value="${board.bno}"/>'
	        $.getJSON('/board/getAttachList', { bno: bno }, function (arr) {
	          console.log(arr)
	          var str = ''
	          $(arr).each(function (i, attach) {
	            if (attach.fileType) {
	              var fileCallPath = encodeURIComponent(attach.uploadPath + '/s_' + attach.uuid + '_' + attach.fileName)
	              str +=
	                "<li data-path='" +
	                attach.uploadPath +
	                "' data-uuid='" +
	                attach.uuid +
	                "' data-filename='" +
	                attach.fileName +
	                "'data-type='" +
	                attach.fileType +
	                "'><div>"
	              str += "<img src='/display?fileName=" + fileCallPath + "'>"
	              str += '</div>'
	              str += '</li>'
	            } else {
	              str +=
	                "<li data-path='" +
	                attach.uploadPath +
	                "' data-uuid='" +
	                attach.uuid +
	                "' data-filename='" +
	                attach.fileName +
	                "'data-type='" +
	                attach.fileType +
	                "' ><div>"
	              str += '<span> ' + attach.fileName + '</span>'
	              str += "<img src ='/resources/img/attach.png'>"
	              str += '</div>'
	              str += '</li>'
	            }
	          })
	          $('.uploadResult ul').html(str)
	        }) //end getJSON
	      })() //END function
	      
	      
     	$(document).ready(function(){
     		$('#fontSize').change(function(){
  	       	var text =$('#fontSize option:selected').text()
  	       	   $('textarea').css('font-size',(Number(text))*7);
  	       	  })
			
    		$('.drag-area').css({"height":"500px","width":"700px",'border':'solid red 2px'})
    		
    		$('#img').css({"height":"250px","width":"700px",'border':'solid red 2px'})
    		
			var $drop = $('#img');
			$drop.on("dragenter", function(e) { //드래그 요소가 들어왔을떄
				console.log('마우스 진입')
				$(this).addClass('drag-over');
				

				
				
			})
			$drop.on("dragleave", function(e) { //드래그 요소가 나갔을때
				console.log('마우스 탈출')
				$(this).removeClass('drag-over');
			})  
			$drop.on("dragover", function(e) {
				e.stopPropagation();
				e.preventDefault();
			})
			$drop.on('drop', function(e) { //드래그한 항목을 떨어뜨렸을때
				console.log('마우스 떨어뜨릴때')
				e.preventDefault();
				var files = e.originalEvent.dataTransfer.files;
				console.log(files)
 			$(this).removeClass('drag-over');
	  		})
     	});
    </script>
  </body>
</html>
