<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<style>
.main-contents{
	width:600px;
	margin:0 auto;
	margin-top:100px;
	
}
.title{
	text-align:center;
	font-size:60px;
	font-weight:bold;
	padding-bottom:50px;
	
	
}
.button-items{
	padding-top:30px;
	
}




</style>
<body>
<div class="main-contents">
<p class="title">회원가입</p>

<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">아이디</span>
  </div>
  <input type="text" id="id" name="id" class="form-control"  aria-label="Username" aria-describedby="basic-addon1">
  <button type="button"id="check" name="check" class="btn btn-primary">중복검사</button>
</div>
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">비밀번호</span>
  </div>
  <input type="password" id="password" name="password" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
</div>
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">전화번호</span>
  </div>
  <input type="tel" id="tel"name="tel" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
</div>
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">이메일주소</span>
  </div>
  <input type="email"name="email"id="email" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
</div>
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">성별</span>
  </div>
  <input type="text" id="gender"name="gender" class="form-control"  aria-label="Username" aria-describedby="basic-addon1">
</div>
<div class="button-items">
<button type="button" id="submit" name="submit"class="btn btn-dark">회원가입하기</button>
<button type="button" id="remove" name="remove"class="btn btn-info">비우기</button>
</div>
</div>


</body>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script language="javascript">
$(document)
.on("click","#check",function(){
	
		if($('#id').val()==""){
			alert("아이디는 공백으로 해둘수 없습니다.")
			return false
		}
		
	$.ajax({

		  url:'signuppage',//호출될 서블릿의 경로(이름)
		  method:'get',//데이터 전송방식 get/post
		  //전송할 데이터(쿼리스트링)//
		  data:'id='+$('input[name=id]').val(),
		  dataType:'text',//반환받을 데이터 타입 
		  beforeSend:function(){},
		  success:function(txt){//호출 성공해서 완료하면 
			  if(txt=="0"){
				  alert("사용가능한 아이디입니다.")
				  return false
			  }else{
				  alert("사용중인 아이디입니다.")
				  return false
				 
			  }
		  	
			
		},
		complete:function(){
			
		} 
		
	  })
	
})

$(document)
.on("click","#submit",function(){

		 if($('#id').val()==""){
			alert("아이디는 공백으로 해둘수 없습니다.")
			return false
		}if($('#password').val()==""){
			alert("비밀번호는 공백으로 해둘수 없습니다.")
			return false;
		}if($("#tel").val()==""){
			alert("모바일번호란을 공백으로 입력할수없습니다.")
			return false;
		}if($('#email').val()==""){
			alert("이메일 란을 공백으로 입력할수없습니다.")
			return false;
		}if($('gender').val()==""){
			alert("성별 란을 공백으로 입력할수없습니다.")
			return false;
		}
		
		if($.isNumeric($('#tel').val())==false){
			alert("모바일번호란에는 숫자만 들어갈수 있습니다.")
			return false;
		}
		
		
		$.ajax({

			  url:'signuppage',//호출될 서블릿의 경로(이름)
			  method:'get',//데이터 전송방식 get/post
			  //전송할 데이터(쿼리스트링)//
			  data:'id='+$('input[name=id]').val(),
			  dataType:'text',//반환받을 데이터 타입 
			  beforeSend:function(){},
			  success:function(txt){//호출 성공해서 완료하면 
				  if(txt=="0"){
					  alert("사용가능한 아이디입니다.")
					  return false
				  }else{
					  alert("사용중인 아이디입니다.")
					  return false
					 
				  }
			  	
				
			},
			complete:function(){
				
			} 
			
		  })
		
		
		
		
		$.ajax({

			  url:'userDTO',//호출될 서블릿의 경로(이름)
			  method:'get',//데이터 전송방식 get/post
			  //전송할 데이터(쿼리스트링)//
			  data:'id='+$('input[name=id]').val()+'&password='+$('input[name=password]').val()+'&tel='+$('input[name=tel]').val()+'&email='+$('input[name=email]').val()+'&gender='+$('input[name=gender]').val(),
			  dataType:'text',//반환받을 데이터 타입 
			  beforeSend:function(){},
			  success:function(txt){//호출 성공해서 완료하면 
				  if(true){
				  alert("회원가입에 성공하였습니다.")
					  
				  }
			  	
				
			},
			complete:function(){
				
			} 
			
		  })
		
})






</script>
</html>