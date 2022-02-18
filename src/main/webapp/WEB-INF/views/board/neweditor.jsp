<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <meta charset="UTF-8" />
    <title>JavaScript Rich Text Editor | webdevtrick.com</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/all.css" />
    <link rel="stylesheet" href="/resources/write-style.css" />
   	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  </head>
<script>
var regex = new RegExp('(.*?)\.(exe|sh|zip|alz)$')
var maxSize = 5242880 //5MB
function checkExtension(fileName, fileSize) {
    if (fileSize >= maxSize) {
      alert('파일 사이즈 초과')
      return false
    }
    if (regex.test(fileName)) {
      alert('해당 종류의 파일은 업로드할 수 없습니다.')
      return false
    }
    return true
  } //checkExtension 확장자 검색 
  function showUploadedFile(uploadResultArr) {// 업로드된 파일 표시 
      if (!uploadResultArr || uploadResultArr.length == 0) {
        return
      }
      var uploadUL = $('.uploadResult ul') //파일을 어디에다 upload 할까 
      var str = ''
      $(uploadResultArr).each(function (i, obj) {

          var fileCallPath = encodeURIComponent(obj.uploadPath + '/s_' + obj.uuid + '_' + obj.fileName)
          str += '<li '
          str += "data-path='" + obj.uploadPath + "' data-uuid='" + obj.uuid + "' data-fileName='" + obj.fileName
          str += "'data-type='" + obj.image + "'><div>"
          str += '<span> ' + obj.fileName + '</span>'
          str +=
            "<button type='button' data-file='" +
            fileCallPath +
            "'data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>"
          str += "<img src='/display?fileName=" + fileCallPath + "'>"
          str += '</div>'
          str += '</li>'
        })//each
 
      uploadUL.append(str)
    }//showUploadedFile
  
  </script>
  <body onload="enableEditMode()">
  	
  <div class="contain-box">
      <div class="bar"></div>
      <div class="title-box">
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
      	<select id="fontSize">
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
         </select>
         
         <label>C</label><input type="color" id="c" />
        <label>H</label><input type="color" id="h" />
         
         
      </div>
    </div>
	
    <textarea class="drag-area">
	      			
	</textarea>
	<div id="img" class='uploadResult'>
		<ul></ul>
	</div>
	<div class="write-btns">
      <button class="s-btn" type="button">Save</button>
      <button class="c-btn" type="button">Cancel</button>
    </div>
    <div class="row box">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<form action="/board/neweditor" method="post">
				
					<div class="form-group">
						<label>회원번호</label> <input class="form-control" name='mno' value="${vo.mno}" readonly/>
					</div>				
										
					<div class="form-group">
						<label>제목</label> <input class="form-control copytitle" name="title"/>
					</div>
	
					<div class="form-group">
						<label>내용</label> 
						<textarea class="form-control" rows="3" name='content'>
						</textarea>
					</div>
					
					<div class="form-group">
						<label>작성자</label> 
						<input class="form-control" name='writer' value="${vo.name}" readonly"/>
					</div>
					<div class="form-group">
							<input class="form-control" name='fileName' />
							<input class="form-control" name='uploadPath' />
							<input class="form-control" name='uuid' />
					</div>
				</form>	
        		<button id="initializeBtn">초기화</button>	
			</div>
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

     	$(document).ready(function(){
     		var cloneObj = $("#img").clone();
     		$('.s-btn').click(function(e){ //s-btn이 눌리면 (SAVE 버튼)
     			$('[name=title]').val($('.title').val()) //name이 title인것을 찾아서 넣어라
     			$('[name=content]').val($('.drag-area').val())
     			$('form').submit();
     		})
     		  
     		
     		$('#fontSize').change(function(){
  	      	var text =$('#fontSize option:selected').text()
  	       	   $('textarea').css('font-size',(Number(text))*7);
  	       	 })
			
  	       	  
  	       $("#c").change(function(){
  	    	   console.log('글씨색상 변경 ',$(this).val())
  	    	   $('textarea').css('color', $(this).val())
  	       })
  	      
  	       $("#h").change(function(){
  	    	   console.log('글씨배경 변경 ',$(this).val())
  	    	   $('textarea').css('background-color', $(this).val())
  	       })
    		
    		
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
				console.log('1)', files)
 				$(this).removeClass('drag-over');
				var formData = new FormData()
			     console.log('2)', files[0])
			      
			      for (var i = 0; i < files.length; i++) {
			        if (!checkExtension(files[i].name, files[i].size)) {
			          return false
			        }
			        formData.append('uploadFile', files[i])
			      }
     	
			      $.ajax({
			        url: '/uploadAjaxAction',
			        processData: false,
			        contentType: false,
			        data: formData,
			        type: 'POST',
			        dataType: 'json',
			        success: function (result) {
			          console.log('success: ',result)
			          $('#initializeBtn').on("click",function(){//초기화버튼누르면 드래그된이미지가 사라진다
			        	  $("#img").html(cloneObj.html());
			          })
			          showUploadedFile(result)
			          $('[name=fileName]').val(result[0].fileName)
			          $('[name=uploadPath]').val(result[0].uploadPath)
			          $('[name=uuid]').val(result[0].uuid)
			          ('form').append(str)
			        },
			      }) //ajax
			      
			      
			    		  
			    
			      
			      
	  		})
     	});
    </script>

    
  </body>
</html>
