
function check_form(){

		if (form.Username.value=="")
		{
			alert ("对不起，请输入您工号！");
			form.Username.focus();
			return false;
		}if ( form.Username.value.length < 4)
		{
			alert("对不起，工号不能少于4位");
			
			form.Username.focus();
			return false;
		}

		if ( form.Username.value.length > 15)
		{
			alert("对不起，工号不能多于15位");
			form.Username.focus();
			return false;
		}
		
	
			if (form.name.value=="")
		{
			alert ("对不起，姓名不能为空!");
			form.name.focus();
			return false;
		}
		if (form.Email.value=="")
		{
			alert ("对不起，请输入Email!");
			form.Email.focus();
			return false;
		}

		
		
		
    	var Email1=document.form.Email.value;
	if(Email1.length<1)
	{
		alert("请填写邮箱地址！");
		document.form.Email.focus();
		return false;
	}

	 invalidChars = "/;,:{}[]|*%$#!()`<>?"; 

		for (i=0; i< invalidChars.length; i++) 
			{ 
		  badChar = invalidChars.charAt(i) 
		  if (Email1.indexOf(badChar,0) > -1) 
				 {
			  alert("您填写的邮箱地址不正确！");
			  document.form.Email.focus();
		      return false; 
				 } 
			} 
		atPos = Email1.indexOf("@",1) 
		if (atPos == -1) 
			{ 
			alert("您填写的邮箱地址不正确！");
			document.form.Email.focus();
			return false; 
			} 
		if (Email.indexOf("@", atPos+1) != -1) 
		 { 
			alert("您填写的邮箱地址不正确！");
		    document.form.Email.focus();
		    return false; 
		 } 
		 periodPos = Email1.indexOf(".",atPos) 
		if(periodPos == -1) 
			 { 
			 alert("您填写的邮箱地址不正确！");
			 document.form.Email.focus();
			 return false; 
			 } 
		if ( atPos +2 > periodPos) 
		 { 
			alert("您填写的邮箱地址不正确！");
			document.form.Email1.focus();
		    return false; 
		 } 
		 if ( periodPos +3 > Email.length) 
		 { 
			 alert("您填写的邮箱地址不正确！");
			 document.form.Email.focus();
			 return false; 
		 }
		

	

return true;
}