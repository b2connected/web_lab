<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <% request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
function check_submit() { // result전 검사 함수
	var types = document.getElementsByName('type');  // 이름을 통해 타입값들을 배열에 넣음
	var type = null;
	var submit = true;
    for (var i = 0, length= types.length ; i < length ; i ++) { // 타입을 하나씩 가져옴
    	if(types[i].checked){ // 체크확인
    		type= types[i].value;  // 체크된 타입값을 가져옴
    	}
    }
    var sizes = document.getElementById('selectBox'); // 아이디를 통해 selectBox의 값 가져옴
    var size= sizes.options[sizes.selectedIndex].value; // value값을 가져옴
    
    if(type == null){ // type이 널이면 
    	confirm('커피를 선택해주세요');
   		submit = false;
    } else if(size == '선택해주세요') { // size가 선택해주세요면
    	confirm('사이즈를 선택해주세요');
    	submit = false;
    }
    return submit;  // 둘 다 아니면 보냄
 }

 //취소 할 지 안할지
 function show_popup(){
    
    if (confirm('취소하시겠습니까?')) {
       location.reload();
          return;
       } else{
          return;
       }
    }
</script>
<h1>음료 주문하기</h1>
<h2>201704020 이어진</h2>
<hr>
<form action="result.jsp" method="post">
커피종류<br>
	<input type="radio" name="type" value="아메리카노"/> 아메리카노
	<input type="radio" name="type" value="카페라떼"/> 카페라떼
	<input type="radio" name="type" value="카페모카"/> 카페모카
<br>옵션<br>
	<input type="radio" name="option" value="hot" checked/> hot
	<input type="radio" name="option" value="ice"/> ice
<br>사이즈<br>
	<select name="size" id="selectBox">
	<option selected>선택해주세요
	<option value="tall">tall
	<option value="grande">grande
	<option value="venti">venti
	</select>
<br><br>
<input type="submit" value="주문하기" onclick="return check_submit();" >
<input type="button" value="취소하기" onclick="show_popup();">
</form>

</body>
</html>