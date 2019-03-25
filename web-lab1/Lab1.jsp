<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 
<%@page import="java.util.*"%>
<%
    request.setCharacterEncoding("UTF-8");
%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="style.css">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>
<body>
   <div id="container">
      <h1>201704020 이어진</h1>
      <h2>상품 구매 양식</h2>
      <p style="color: red; font-size: 10px">모든 항목을 모두 채워주세요.</p>
      <hr>
      <form action="Lab1_result.jsp" name="form" method="post"  onreset=" " onsubmit="return confirm('상품을 주문하시겠습니까?');">
         <p>이름</p> 
         <input type="text" id="name" name="name" placeholder="이어진"  autofocus onkeydown="check_before_submit()" required="required"> 
         <span id="name_chk"> * 이름을 입력해주세요</span> 
            <p>전화번호</p> 
            <input type="text" id="tel" name="tel" placeholder="-제외하고 입력"  onkeydown="check_before_submit()" required="required">
            <span id="tel_chk"> * 전화번호를 입력해주세요 </span> 
            <p>사이즈</p> 
         <label>
            <input type="radio" name="size" value="S" checked> S 
            <input type="radio" name="size" value="M"> M 
            <input type="radio" name="size" value="L"> L
         </label> 
            <p>수량</p> 
         <select id="count" name="count" required="required" onchange="focusing3()">
            <option value="">선택하세요</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
         </select>       
         <span id="count_chk"> * 수량을 입력해주세요</span>
         <hr>      
         <div class="total" style="text-align: right">금액 : 
         <span id="finalCount" style="font-size: 25px">
         0
         </span>
         
         </div>
         <p>
          <input type="submit" value="제출" > 
          <input type="button" value="다시쓰기" onclick="show_popup2();">
      </form>
   </div>
   <script type="text/javascript">    
   /*빨간 글씨 경고 띄우는 함수인데, 
   onfocus어떻게 해야할 지 잘 모르겠어서  focus랑 blur로 구현했어요*/
   var x = document.getElementById("name");
   x.addEventListener("focus", focusing1, true);
   x.addEventListener("blur", blur1, true);
   
   var y = document.getElementById("tel");
   y.addEventListener("focusin", focusing2, true);
   y.addEventListener("blur", blur2, true);
   
   function focusing1() {   	   
        document.getElementById('name_chk').innerHTML = "";
   }
   function focusing2() {   
	   document.getElementById('tel_chk').innerHTML = "";  	 
   }
   // 수량 값 받아와서 널 아닐 때만 빨간 글씨 없애줌.
   function focusing3() { 
	   var submit = false;
	   var z = document.getElementById("count");
	   var selectValue = z.options[z.selectedIndex].value;
	   
	   if(selectValue == "" || selectValue == "0" || selectValue == 0 || !selectValue){
		   document.getElementById('count_chk').innerHTML = "* 수량을 입력해주세요";  	
		   submit=false;
	   } else {
		   document.getElementById('count_chk').innerHTML = ""; 
	   }   	 
   }
   function blur1() {   	   
	   check_before_submit(); 
   }
   function blur2() {   
	   check_before_submit();  	 
   }

   
    function check_before_submit() { // result전 검사 함수
    
       var name = $("#name").val();
       var tel = $("#tel").val();
       var count = $("#count").val();
       var submit = false;
       
    
       if(name =='' || name == 0 || !name){   
           document.getElementById('name_chk').innerHTML = "* 이름을 입력해주세요";
           submit=false;
       }else{
           document.getElementById('name_chk').innerHTML = "";
           submit=true;
       }
       
       if(tel == '' || tel == 0 || !tel){     
          document.getElementById('tel_chk').innerHTML = "* 전화번호를 입력해주세요";
          submit=false;
       }else{
           document.getElementById('tel_chk').innerHTML = "";
           submit=true;
       }
       if(count == '' || count == 0 || !count){   
       
          document.getElementById('count_chk').innerHTML = "* 수량을 입력해주세요";
          submit=false;
       }else{
           document.getElementById('count_chk').innerHTML = "";
           submit=true;
       }
       return submit;
    }
    
    // count.value가져와서 가격계산 하는 함수 
    function show_selected() {
        var selector = document.getElementById('count');
        var value = selector[selector.selectedIndex].value;
        var price = 5000;
       var sum = 0;
       sum = value * price;
        document.getElementById('finalCount').innerHTML = sum;
    }
    
    document.getElementById('count').addEventListener('change', show_selected);
    
    //취소 할 지 안할지
    function show_popup2(){
       
       if (confirm('정말 취소하시겠습니까?')) {
          location.reload();
             return;
          } else{
             return;
          }
       }
    
    </script>

</body>
</html>