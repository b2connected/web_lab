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
function check_submit() { // result�� �˻� �Լ�
	var types = document.getElementsByName('type');  // �̸��� ���� Ÿ�԰����� �迭�� ����
	var type = null;
	var submit = true;
    for (var i = 0, length= types.length ; i < length ; i ++) { // Ÿ���� �ϳ��� ������
    	if(types[i].checked){ // üũȮ��
    		type= types[i].value;  // üũ�� Ÿ�԰��� ������
    	}
    }
    var sizes = document.getElementById('selectBox'); // ���̵� ���� selectBox�� �� ������
    var size= sizes.options[sizes.selectedIndex].value; // value���� ������
    
    if(type == null){ // type�� ���̸� 
    	confirm('Ŀ�Ǹ� �������ּ���');
   		submit = false;
    } else if(size == '�������ּ���') { // size�� �������ּ����
    	confirm('����� �������ּ���');
    	submit = false;
    }
    return submit;  // �� �� �ƴϸ� ����
 }

 //��� �� �� ������
 function show_popup(){
    
    if (confirm('����Ͻðڽ��ϱ�?')) {
       location.reload();
          return;
       } else{
          return;
       }
    }
</script>
<h1>���� �ֹ��ϱ�</h1>
<h2>201704020 �̾���</h2>
<hr>
<form action="result.jsp" method="post">
Ŀ������<br>
	<input type="radio" name="type" value="�Ƹ޸�ī��"/> �Ƹ޸�ī��
	<input type="radio" name="type" value="ī���"/> ī���
	<input type="radio" name="type" value="ī���ī"/> ī���ī
<br>�ɼ�<br>
	<input type="radio" name="option" value="hot" checked/> hot
	<input type="radio" name="option" value="ice"/> ice
<br>������<br>
	<select name="size" id="selectBox">
	<option selected>�������ּ���
	<option value="tall">tall
	<option value="grande">grande
	<option value="venti">venti
	</select>
<br><br>
<input type="submit" value="�ֹ��ϱ�" onclick="return check_submit();" >
<input type="button" value="����ϱ�" onclick="show_popup();">
</form>

</body>
</html>