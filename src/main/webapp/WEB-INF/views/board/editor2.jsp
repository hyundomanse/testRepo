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
	     		 border: "1px solid lightgrey", 
	     		 position: "relative"})
	      
	     writeDiv.css({
	    	  padding: "5%",
	    	  height:"auto",
	    	  outline:"none"
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
	

      
      /* ------------------최초의 page와 wirte 클래스 추가-----------------------*/
      
      
      const writeDivfirst = document.createElement('div')
      writeDiv.appendChild(writeDivfirst)
      writeDiv.innerText('\n')

 

      pageDiv.appendChild(pageNum)
	  
      /* -------------생성될 page와 wirte 배열 및, 글 높이 선언---------------------*/
      var classNameArray = []
      var pageHeight = pageDiv.offsetHeight
      var flag = false
      /* -------keydown Event(마지막 writes의 높이보다 크면 새로운 div 생성)---------*/
      pageSection.addEventListener('keyup', heightAlign)
	  
      function heightAlign() {
        checkClassName()
        var writeHeight = writeDiv.offsetHeight
        checkPosition()
        console.log('writeheight:', writeHeight)
      }

      const checkPosition = () => {
        var changeHeight
        var nodes = []
        var sumNodesHeight = 0

        var writeNodes = writeDiv.childNodes
        var lastNodes = writeNodes[writeNodes.length - 1]
        var singlePara = document.createElement('div')
        singlePara.style.height = '300px'
        var multiPara = document.createElement('div')
        multiPara.style.height = '50px'

        for (var i = 0; i < writeNodes.length - 1; i++) {
          nodes.push(writeNodes[i].clientHeight)
          sumNodesHeight += writeNodes[i].clientHeight

          if (
            (sumNodesHeight < pageHeight - 200 && sumNodesHeight + writeNodes[writeNodes.length - 1].clientHeight > pageHeight - 200) ||
            sumNodesHeight > pageHeight - 200
          ) {
            createDiv()
            pageHeight += 1002
            devideDiv(writeNodes)
            console.log('test:', writeNodes[writeNodes.length - 2].getBoundingClientRect().bottom)

            var nextPage = 0
            var ggg = 1
            for (var i = 0; i < writeNodes.length; i++) {
              if (writeNodes[i].getBoundingClientRect().bottom > 600 + nextPage) {
                console.log('로그값:', writeNodes[i].getBoundingClientRect().bottom)
                ggg++
              }
              console.log('ggg값은:', ggg)
            }
            writeDiv.insertBefore(singlePara, writeNodes[writeNodes.length - ggg])
            nextPage += 1002

            selectElementText(writeDiv.lastElementChild)
            selectElementText(writeNodes[writeNodes.length - 1], editBody3)
          }
        }

        console.log('bottom:', nodes, 'sumNodesHeight:', sumNodesHeight)
        console.log('pagesOffsetheight:', pageHeight)
        var pos = singlePara.getBoundingClientRect()
        console.log('top:', pos.top, 'bottom:', pos.bottom)
      }

      const devideDiv = (node) => {
        var arrText = []
        text = node[node.length - 1].innerText
        let sentenceWidth = Math.ceil(text.length / 52)
        if (sentenceWidth < 1) {
          sentenceWidth = 1
        } else sentenceWidth = sentenceWidth

        var t = 0,
          j = 0
        for (var i = 0; i <= sentenceWidth; i++) {
          arrText[i] = text.slice(j, 50 + t)
          t += 52
          j = t + 1
        }

        writeDiv.removeChild(node[node.length - 1])
        console.log('arrText:', arrText)
        for (var i = 0; i < arrText.length; i++) {
          console.log('들어갔나?')
          let nnn = document.createElement('div')
          nnn.innerHTML = arrText[i]
          writeDiv.appendChild(nnn)
        }
      }

      /*-------------------마우스 포인터 텍스트 마지막으로 지정------------------*/

      function selectElementText(el, win) {
        win = win || window
        var doc = win.document,
          sel,
          range
        if (win.getSelection && doc.createRange) {
          sel = win.getSelection()
          range = doc.createRange()
          range.selectNodeContents(el)
          sel.removeAllRanges()
          sel.addRange(range)
        } else if (doc.body.createTextRange) {
          range = doc.body.createTextRange()
          range.moveToElementText(el)
          range.select()
        }
      }

      /*-------------------div 자식 태그 없애기-----------------*/

      writeDiv.addEventListener('paste', removeDiv)
      function removeDiv() {
        var tt = 1
        var nodes = writeDiv.childNodes
        for (var i = 0; i < nodes.length; i++) {
          if (nodes[i].hasChildNodes() == true) {
            for (var j = 0; j < nodes[i].childNodes.length; j++) {
              if (nodes[i].childNodes[j].tagName == 'BR') {
                console.log('BR이다' + tt++)
                nodes[i].innerText += '<br>'
              }
              nodes[i].childNodes[j].outerHTML = nodes[i].childNodes[j].innerHTML
              console.log('Text or html:', nodes[i].childNodes[j])
            }
          }
		

        }

      }

      /* -------------추가되는 노드를 배열에 담는 함수-------------*/
      const checkClassName = () => {
        var nodes = pageSection.childNodes
        for (var i = 0; i < nodes.length; i++) {
          classNameArray[i] = nodes[i].className
        }
        return classNameArray
      }

      /* -------------새로운 page와 write div 생성 함수-------------*/
      var num1 = 1
      var bott = -105
      const createDiv = () => {
        const fakePage = document.createElement('div')
        fakePage.setAttribute('class', 'fakePage')
        fakePage.setAttribute('contentEditable', 'false')
        fakePage.style.width = '725px'
        fakePage.style.height = '1000px'
        fakePage.style.position = 'absolute'
        fakePage.style.bottom = bott + '%'
        fakePage.style.border = '1px solid #d1d1d1'
        fakePage.style.zIndex = '-1'
        pageDiv.appendChild(fakePage)

        num1++
        bott -= 105
        const fakePageNum = document.createElement('h4')
        fakePageNum.setAttribute('class', 'pageNum')
        fakePageNum.style.position = 'absolute'
        fakePageNum.style.left = '50%'
        fakePageNum.style.bottom = '0'
        fakePageNum.style.transform = 'translateX(-50%)'
        fakePageNum.innerText = num1
        fakePage.appendChild(fakePageNum)
      }

      /*---------------------이미지 담는 박스-----------------------------*/
      editBody.addEventListener('dragover', (event) => {
        event.preventDefault()
      })
      editBody.addEventListener('dragleave', () => {})

      editBody.addEventListener('drop', (event) => {
        newDiv.setAttribute('class', 'item')
        newDiv.setAttribute('contentEditable', 'false')
        newDiv.style.width = '200px'
        newDiv.style.height = '200px'
        newDiv.style.backgroundColor = 'red'
        newDiv.style.position = 'absolute'
        newDiv.style.cursor = 'pointer'
        newDiv.style.top = '10%'
        newDiv.style.left = '10%'
        editBody.appendChild(newDiv)

        let file
        file = event.dataTransfer.files[0]
        let fileType = file.type
        console.log(fileType)

        let validExtensions = ['image/jpeg', 'image/jpg', 'image/png']
        if (validExtensions.includes(fileType)) {
          let fileReader = new FileReader()
          fileReader.onload = (e) => {
            let fileURL = fileReader.result
            let imgTag = document.createElement('img')
            imgTag.setAttribute('src', e.target.result)
            imgTag.style.height = '90%'
            imgTag.style.pointerEvents = 'none'

            newDiv.appendChild(imgTag)
          }
          fileReader.readAsDataURL(file)
        } else {
          alert('this is not an Image File')
        }

        /*-------------------이미지 박스 움직이기-----------------------------*/

        let ne = document.createElement('div')
        let nw = document.createElement('div')
        let sw = document.createElement('div')
        let se = document.createElement('div')
        ne.classList.add('resizer', 'ne')
        nw.classList.add('resizer', 'nw')
        sw.classList.add('resizer', 'sw')
        se.classList.add('resizer', 'se')
        newDiv.append(ne)
        newDiv.append(nw)
        newDiv.append(sw)
        newDiv.append(se)

        var $el = $('editText').contents().find('.item')
        var $resizer = $('#editText').contents().find('.resizer')
        var $nw = $('#editText').contents().find('.resizer.nw')
        var $ne = $('#editText').contents().find('.resizer.ne')
        var $sw = $('#editText').contents().find('.resizer.sw')
        var $se = $('#editText').contents().find('.resizer.se')

        $resizer.css({ 'background-color': 'black', width: '5px', height: '5px', 'border-radius': '5px', position: 'absolute' })
        $ne.css({ top: '-1px', right: '-1px', position: 'absolute', cursor: 'ne-resize' })
        $nw.css({ top: '-1px', left: '-1px', position: 'absolute', cursor: 'nw-resize' })
        $sw.css({ bottom: '-1px', left: '-1px', position: 'absolute', cursor: 'sw-resize' })
        $se.css({ bottom: '-1px', right: '-1px', position: 'absolute', cursor: 'se-resize' })

        /*-----------------------Resize function-----------------------------*/
        const resizeFunc = () => {
          const resizers = editBody.querySelectorAll('.resizer')
          let currentResizer
          for (var i = 0; i < resizers.length; i++) {
            resizers[i].addEventListener('mousedown', mousedown)
            function mousedown(e) {
              e.preventDefault()
              console.log('리사이저 마우스 다운 잡힌다.')
              currentResizer = e.target
              isResizing = true

              let prevX = e.clientX
              let prevY = e.clientY

              editBody3.addEventListener('mousemove', mousemove)
              editBody3.addEventListener('mouseup', mouseup)

              function mousemove(e) {
                e.preventDefault()
                console.log('리사이징이 된다')
                const rect = el.getBoundingClientRect()
                if (currentResizer.classList.contains('se')) {
                  el.style.width = rect.width - (prevX - e.clientX) + 'px'
                  el.style.height = rect.height - (prevY - e.clientY) + 'px'
                } else if (currentResizer.classList.contains('sw')) {
                  el.style.width = rect.width + (prevX - e.clientX) + 'px'
                  el.style.height = rect.height - (prevY - e.clientY) + 'px'
                  el.style.left = rect.left - (prevX - e.clientX) + 'px'
                } else if (currentResizer.classList.contains('ne')) {
                  el.style.width = rect.width - (prevX - e.clientX) + 'px'
                  el.style.height = rect.height + (prevY - e.clientY) + 'px'
                  el.style.top = rect.top - (prevY - e.clientY) + 'px'
                } else if (currentResizer.classList.contains('nw')) {
                  el.style.width = rect.width - (prevX - e.clientX) + 'px'
                  el.style.height = rect.height + (prevY - e.clientY) + 'px'
                  el.style.top = rect.top - (prevY - e.clientY) + 'px'
                } else {
                  el.style.width = rect.width + (prevX - e.clientX) + 'px'
                  el.style.height = rect.height + (prevY - e.clientY) + 'px'
                  el.style.top = rect.top - (prevY - e.clientY) + 'px'
                  el.style.left = rect.left - (prevX - e.clientX) + 'px'
                }
                prevX = e.clientX
                prevY = e.clientY
              }
              function mouseup() {
                editBody3.removeEventListener('mousemove', mousemove)
                editBody3.removeEventListener('mouseup', mouseup)
                isResizing = false
              }
            }
          }

        }

        /*----------------------image moving func-------------------------*/
        let copyWrites = ReloadText()

        let isResizing = false
        const el = editBody.querySelector('.item')
        el.addEventListener('mousedown', mousedown, false)
        function mousedown(e) {
          console.log('아이템 마우스 다운이 된다')
          editBody3.addEventListener('mousemove', mousemove)
          editBody3.addEventListener('mouseup', mouseup)

          let prevX = e.clientX
          let prevY = e.clientY

          function mousemove(e) {
            runningText()
            if (!isResizing) {
              let newX = prevX - e.clientX
              let newY = prevY - e.clientY
              const rect = el.getBoundingClientRect()
              el.style.left = rect.left - newX + 'px'
              el.style.top = rect.top - newY + 'px'
              prevX = e.clientX
              prevY = e.clientY
              var windowWidth = $('#editText').width()
              var windowHeight = $('#editText').height()
            }
            console.log('x:', prevX, 'y:', prevY)
          }

          function mouseup() {
            editBody3.removeEventListener('mousemove', mousemove)
            editBody3.removeEventListener('mouseup', mouseup)
          }
          if ((e.clientX = prevX)) resizeFunc()
        }

        /*------------------image dot showing-------------------------*/
        // findPages();

        el.addEventListener('click', showDot)
        // pages.map(i => i.addEventListener("click", hideDot));
        pageDiv.addEventListener('click', hideDot)

        function showDot(e) {
          const editBody = iframeObj.contentWindow.document.body
          const el = editBody.querySelector('.item')
          const resizers = editBody.querySelectorAll('.resizer')
          for (var i = 0; i < resizers.length; i++) {
            resizers[i].style.visibility = 'visible'
          }
        }

        /*-------------------------image delete----------------------------*/
        editBody.addEventListener('keydown', function (e) {
          console.log('왜 안되지?')
          if (e.keyCode == 46) {
            editBody.removeChild(el)
            Undo()
            writeDiv.innerHTML = copyWrites
          }
        })

        function Undo() {
          var editBody = iframeObj.contentWindow.document.body
          var inlineBlock = editBody.querySelectorAll('#inlineBlock')
          for (var i = 0; i < inlineBlock.length; i++) {
            inlineBlock[i].remove()
          }
        }

        function ReloadText() {
          var copyWrites = []
          copyWrites = writeDiv.innerHTML
          return copyWrites
        }

        function hideDot() {
          const editBody = iframeObj.contentWindow.document.body
          const resizers = editBody.querySelectorAll('.resizer')
          for (var i = 0; i < resizers.length; i++) {
            resizers[i].style.visibility = 'hidden'
          }
        }
      }) //drop 함수 end

      /* -------------------------running text--------------------------------*/

      function runningText() {
        var $text = $('#editText').contents().find('.write')
        var $el = $('#editText').contents().find('.item')

        var pos = []
        var clickpos = []
        var text = ''
        var mouse = 'up'
        var arrText = []
        var imgleft,
          imgtop,
          imgwidth,
          imgheight,
          spanleft,
          spantop,
          spanwidth,
          spanheight,
          latesttop,
          latestleft,
          latestwidth,
          downleft,
          downtop,
          mouse,
          textleft,
          texttop,
          textwidth,
          textheight

        function runningprepare(divtext) {
          text = divtext.text()
          var arrText = text.split(' ')
          for (var i = 0; i < arrText.length; i++) {
            var len = arrText[i].length - 1
            var open = arrText[i].search(/^</)
            var close = arrText[i].search(/>/)
            if (open > -1 && close > open) {
              if (open == 0 && close < len) {
                arrText[i] = arrText[i].replace(/>/, "><span id='t'>") + '</span>'
              } else if (open > 0 && close == len) {
                arrText[i] = "<span id='t'>" + arrText[i].replace(/</, '</span><')
              }
            } else {
              arrText[i] = "<span id='t'>" + arrText[i] + '</span>'
            }
          }

          text = arrText.join(' ')
          var $add = $('<writing></writing>')

          $add.html(text).html()
          $text.children().remove()
          $text.empty()
          $text.append($add)
          return text
        }

        function runningtext(imgdiv) {
          var spanT = $('#editText').contents().find('span')
          console.log('스팬 t:', spanT)
          pos = imgdiv.offset()
          imgleft = parseInt(pos.left)
          imgtop = parseInt(pos.top)
          imgwidth = imgdiv.width()
          imgheight = imgdiv.height()
          latesttop = parseInt($text.offset().top)

          spanT.each(function (index) {
            pos = $(this).offset()
            spanleft = parseInt(pos.left)
            spantop = parseInt(pos.top)
            spanwidth = $(this).width()
            spanheight = $(this).height()

            if (
              spantop + spanheight > imgtop &&
              spantop < imgtop + imgheight + 12 &&
              spanleft + spanwidth > imgleft &&
              spanleft < imgleft + imgwidth
            ) {
              if (latesttop != spantop) {
                latestleft = 0
                latestwidth = 0
              }
              var spacewidth = 15 + imgwidth + imgleft - latestleft - latestwidth
              $(this).before("<div id='inlineBlock' style='display:inline-block;width:" + spacewidth + "px'></div>")
            }
            latesttop = spantop
            latestleft = spanleft
            latestwidth = spanwidth
            console.log('spacewith:', spacewidth)
          })
          return
        }

        function runningundo() {
          var inlineBlock = $('#editText').contents().find('inlineBlock')
          inlineBlock.each(function (index) {
            $(this).remove()
          })
          return
        }

        runningprepare($text)
        runningtext($el)
      }
      
      
	  var formObj = $('form');
      $('.s-btn').on("click", function(){
    	  console.log("마우스가 드래그 됨.")
        var $content = $('#editText').contents().find('.write')
    	$('textarea').val($content.html()); 
    	$('.copytitle').val($('.title').val());
    	formObj.attr('action', '/board/boardmodify').attr('method', 'post');
    	formObj.submit();
      })

      /*-------------------------로드 하자 마자 텍스트 집어넣기---------------------------------*/
      $(document).ready(function(){
    	  var $clone = $('#editText').contents().find('.write')
          $clone.html($('textarea').html()); 	  
      })

      })   

    </script>
  </body>
</html>
