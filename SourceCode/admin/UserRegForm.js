function CheckIfDec( String )
{ 
    var Letters = "0123456789-";
     var i;
     var c;
      if(String.charAt( 0 )=='-')
	return false;
      if( String.charAt( String.length - 1 ) == '-' )
          return false;
     for( i = 0; i < String.length; i ++ )
     {
          c = String.charAt( i );
	  if (Letters.indexOf( c ) < 0)
	     return false;
     }
     return true;
}

function check_form(){

		if (form.Username.value=="")
		{
			alert ("对不起，请输入您想注册的用户帐号！");
			form.Username.focus();
			return false;
		}
		
		
		
		

	if(/[^a-zA-Z0-9_]/g.test(document.form.Username.value) || /[^a-zA-Z]/g.test(document.form.Username.value.substr(0,1)))
	{
		alert("用户名只能用数字或英文,并且必须为英文字母开头!");
		document.form.Username.focus();
		return false;
	}


    var Username=document.form.Username.value;
    var check_Username = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
  
    
		if (check_Username.indexOf(Username.charAt(i))==-1) 
        {
		alert("用户帐号只能由字母和数字构成，长度在4-15位之间。");
		document.form.Username.focus();
		return false;
    	}
    	
		if ( form.Username.value.length < 4)
		{
			alert("对不起，用户帐号不能少于4位");
			form.Username.focus();
			return false;
		}

		if ( form.Username.value.length > 10)
		{
			alert("对不起，用户帐号不能多于10位");
			form.Username.focus();
			return false;
		}





	











 
		if (form.Password.value=="")
		{
			alert ("对不起，请输入登录密码！");
			form.Password.focus();
			return false;
		}
		
    var Password=document.form.Password.value;
    var check_Password = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
    var i;
    for (i=0;i<Password.length;i++)
    
  		if (check_Password.indexOf(Password.charAt(i))==-1) 
        {
		alert("登录密码只能由字母和数字构成，长度在6-15位之间。");
		document.form.Password.focus();
		return false;
    	}		

		if ( form.Password.value.length < 6)
		{
			alert("对不起，密码长度不能少于6位！");
			form.Password.focus();
			return false;
		}

		if ( form.Password.value.length > 15)
		{
			alert("对不起，密码长度不能超过15位！");
			form.Password.focus();
			return false;
		}

  if (form.Password1.value==""){
    alert("对不起，您两次输入的密码不相同，请重新输入！");
    form.Password1.focus();
    return false;
  }

   if (form.Password.value!=form.Password1.value){
    alert("对不起，您两次输入的密码不相同，请重新输入！");
    form.Password1.focus();
    return false;
}


		
		
		if (form.questionid.value=="")
		{
			alert ("对不起，请选择安全提示问答,忘记密码以便找回!");
			form.questionid.focus();
			return false;
		}
if (form.da.value=="")
		{
			alert ("对不起，请输入安全提示问答的答案,忘记密码以便找回!");
			form.da.focus();
			return false;
		}
		if (form.Province.value=="")
		{
			alert ("对不起，请选择您所在的省份！");
			form.Province.focus();
			return false;
		}

		<!--if (form.City.value=="")
		
		<!--{
		<!--	alert ("对不起，请输入您所在的市/县/镇的名称！");
		<!--	form.City.focus();
		<!--	return false;
		<!--}
		
		<!--if (form.Address.value=="")
	<!--	{
		<!--	alert ("对不起，请输入联系地址！");
		<!--	form.Address.focus();
		<!--	return false;
		<!--}		

		<!--if ( form.Address.value.length < 7)
		<!--{
		<!--	alert("对不起，您的联系地址不详细！");
		<!--	form.Address.focus();
		<!--	return false;
	<!--	}


 <!--if (form.Postnumber.value==""){
  <!--  alert("对不起，请输入邮政编码！");
   <!-- form.Postnumber.focus();
    <!--return false;
<!--  }
  
  <!--if (form.Postnumber.value.length!=6){
   <!-- alert("对不起，请输入6位的邮政编码！");
   <!-- form.Postnumber.focus();
    <!--return false;
  <!--}

      <!--  if (!CheckIfDec(document.form.Postnumber.value ))
      <!--  {
		<!--alert("对不起，邮政编码是由数字构成的，请不要填写其它字符或全角数字！");
		<!--document.form.Postnumber.focus();
		<!--return false;
    	<!--}		

		<!--if (form.Tel.value=="")
		<!--{
		<!--	alert ("对不起，请您输入联系电话！");
		<!--	form.Tel.focus();
			<!--return false;
		<!--}		

       <!-- if (!CheckIfDec(document.form.Tel.value ))
     <!--   {
		<!--alert("对不起，联系电话应由数字及中横线“-”构成\n\n请不要填写其它字符或全角数字");
	<!--	document.form.Tel.focus();
		<!--return false;
    	<!--}		

	<!--	if ( form.Tel.value.length < 11)
		<!--{
		<!--	alert("对不起，您的电话号码位数不足！");
		<!--	form.Tel.focus();
		<!--	return false;
		<!--}

	var Email=document.form.Email.value;
	if(Email.length<1)
	{
		alert("请填写邮箱地址！");
		document.form.Email.focus();
		return false;
	}

	 invalidChars = "/;,:{}[]|*%$#!()`<>?"; 

		for (i=0; i< invalidChars.length; i++) 
			{ 
		  badChar = invalidChars.charAt(i) 
		  if (Email.indexOf(badChar,0) > -1) 
				 {
			  alert("您填写的邮箱地址不正确！");
			  document.form.Email.focus();
		      return false; 
				 } 
			} 
		atPos = Email.indexOf("@",1) 
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
		 periodPos = Email.indexOf(".",atPos) 
		if(periodPos == -1) 
			 { 
			 alert("您填写的邮箱地址不正确！");
			 document.form.Email.focus();
			 return false; 
			 } 
		if ( atPos +2 > periodPos) 
		 { 
			alert("您填写的邮箱地址不正确！");
			document.form.Email.focus();
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