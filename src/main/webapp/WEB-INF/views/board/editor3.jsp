<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <meta charset="UTF-8" />
    <title>JavaScript Rich Text Editor | webdevtrick.com</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/all.css" />
    <link rel="stylesheet" href="/resources/write-style.css" />
  </head>

  <body>
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
      	
        
        <br />
       
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
    <span class="drag-area">
      <iframe id="editText" name="richTextField"></iframe>
    </span>
    <div class="write-btns">
      <button class="s-btn" type="button">Save</button>
      <button class="c-btn" type="button">Cancel</button>
    </div>


	<div class="row box">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">File</div>
				<div class="panel-body">
					<div class="uploadResult">
						<ul>
	
						</ul>
					</div>
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
				
   <button class="modifyBtn" type="submit" onclick="location.href='/board/boardlist?bno=${board.bno}'">modify</button> 

					<button data-oper='list' class="btn btn-primary"
						onclick="location.href='/board/list'">목록</button>

				</div>
			</div>
		</div>
	</div>

    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script type="text/javascript">
      function enableEditMode() {
       	richTextField.document.designMode = 'on'
        //$('iframe').contents().prop('designMod','on')
      }
      
      function Edit(command) {
        //richTextField.document.execCommand(command, false, null)
        console.log(command)
       	if(command=='bold'){
       		$('iframe').contents().find('body').css('font-weight', command);
       	}else if(command=='italic'){
       		$('iframe').contents().find('body').css('font-style', command);
       	}else if(command=='underline' || command=='line-through' ){
       		$('iframe').contents().find('body').css('text-decoration', command);
       	}else if(command=='left' || command=='right' || command=='center'){
       		$('iframe').contents().find('body').css('text-align', command);
       	}
      }
      $(document).ready(function(){
    	  $('#fontSize').change(function(){
       	   var text =$('#fontSize option:selected').text()
       	   $('iframe').contents().find('body').css('font-size',(Number(text))*20);
       	  })
       	 const iframeObj = $('#editText').contents().find('body');
    	 const  iframeSection = '<div class=pageSection>'+
	      '<div class=page >'+
	      '<div class=write contenteditable=true>'+
	      '<div>'+'<br>'+'</div> </div>'+'<h4 class=pageNum></h4>'+
	      '</div>'
		var writeDiv = iframeObj.find('.write').find('div')
    	var pageDiv = iframeObj.find('.page').find('div')
    	var pageSection = iframeObj.find('.pageSection')
	    var pageNum = iframeObj.find('.pageNum')
	      
	      $(".s-btn").click(function(e){
	    	$('input[name=content]').val(a.text())
	    	$('input[name=title]').val(titleObj)
	      })
	      iframeObj.append(iframeSection)
	      pageSection.css({
	    	  height:"auto"
	      })
	      pageSection.attr({
	    	  contenteditable:"false"
	      })
	      iframeObj.find('.page').attr({
	    	  contenteditable:"false"
	      })
	      pageDiv.css({
	    	 	 margin: "50px 20px 30px",
	     		 height: "1000px",
	     		 border: "1px solid lightgrey"
	     		})
	      
	     writeDiv.css({
	    	  padding: "5%",
	    	  height:"1000px",
	    	  
	      })
	     writeDiv.attr(
	    	  "contenteditable","true"
	      )
	      iframeObj.find('.pageNum').css({
	    	  position:"absolute",
	    	  left:"50%",
	    	  bottom:"0px",
	    	  transform:"translateX(-50%)"
	     }) 
	     
	     
	     iframeObj.on('dragenter',function(e) {
	    	 e.stopPropagation();
	    	 	console.log('dragenter');
	    	 		$(this).addClass('drag-over')
	    	 		str="<img src='/resources/img/img02.png'>"
	    	 		$(this).after(str);
	    	 			console.log('str');
	     });
	})
      
	</script>
  </body>
</html>
