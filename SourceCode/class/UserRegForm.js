
function check_form(){

		if (form.Username.value=="")
		{
			alert ("�Բ�����������ѧ�ţ�");
			form.Username.focus();
			return false;
		}
		
		
		
		

	if(/[^a-zA-Z0-9_]/g.test(document.form.Username.value) || /[^a-zA-Z]/g.test(document.form.Username.value.substr(0,1)))
	{
		alert("ѧ��ֻ�������ֻ�Ӣ��,���ұ���ΪӢ����ĸ��ͷ!");
		document.form.Username.focus();
		return false;
	}


    var Username=document.form.Username.value;
    var check_Username = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
  
    
		if (check_Username.indexOf(Username.charAt(i))==-1) 
        {
		alert("ѧ��ֻ������ĸ�����ֹ��ɣ�������4-15λ֮�䡣");
		document.form.Username.focus();
		return false;
    	}
    	
		if ( form.Username.value.length < 4)
		{
			alert("�Բ���ѧ�Ų�������4λ");
			form.Username.focus();
			return false;
		}

		if ( form.Username.value.length > 10)
		{
			alert("�Բ���ѧ�Ų��ܶ���10λ");
			form.Username.focus();
			return false;
		}

 
		if (form.Password.value=="")
		{
			alert ("�Բ����������¼���룡");
			form.Password.focus();
			return false;
		}
		
    var Password=document.form.Password.value;
    var check_Password = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
    var i;
    for (i=0;i<Password.length;i++)
    
  		if (check_Password.indexOf(Password.charAt(i))==-1) 
        {
		alert("��¼����ֻ������ĸ�����ֹ��ɣ�������6-15λ֮�䡣");
		document.form.Password.focus();
		return false;
    	}		

		if ( form.Password.value.length < 6)
		{
			alert("�Բ������볤�Ȳ�������6λ��");
			form.Password.focus();
			return false;
		}

		if ( form.Password.value.length > 15)
		{
			alert("�Բ������볤�Ȳ��ܳ���15λ��");
			form.Password.focus();
			return false;
		}

  if (form.Password1.value==""){
    alert("�Բ��𣬲���Ϊ�գ�");
    form.Password1.focus();
    return false;
  }

   if (form.Password.value!=form.Password1.value){
    alert("�Բ�����������������벻��ͬ�����������룡");
    form.Password1.focus();
    return false;
}
if (form.name.value=="")
		{
			alert ("�Բ�����������������!");
			form.name.focus();
			return false;
		}

		
		
		
		
		if (form.Email.value=="")
		{
			alert ("�Բ�������������EMAIL!");
			form.Email.focus();
			return false;
		}
		var Email=document.form.Email.value;
	if(Email.length<1)
	{
		alert("����д�����ַ��");
		document.form.Email.focus();
		return false;
	}

	 invalidChars = "/;,:{}[]|*%$#!()`<>?"; 

		for (i=0; i< invalidChars.length; i++) 
			{ 
		  badChar = invalidChars.charAt(i) 
		  if (Email.indexOf(badChar,0) > -1) 
				 {
			  alert("����д�������ַ����ȷ��");
			  document.form.Email.focus();
		      return false; 
				 } 
			} 
		atPos = Email.indexOf("@",1) 
		if (atPos == -1) 
			{ 
			alert("����д�������ַ����ȷ��");
			document.form.Email.focus();
			return false; 
			} 
		if (Email.indexOf("@", atPos+1) != -1) 
		 { 
			alert("����д�������ַ����ȷ��");
		    document.form.Email.focus();
		    return false; 
		 } 
		 periodPos = Email.indexOf(".",atPos) 
		if(periodPos == -1) 
			 { 
			 alert("����д�������ַ����ȷ��");
			 document.form.Email.focus();
			 return false; 
			 } 
		if ( atPos +2 > periodPos) 
		 { 
			alert("����д�������ַ����ȷ��");
			document.form.Email.focus();
		    return false; 
		 } 
		 if ( periodPos +3 > Email.length) 
		 { 
			 alert("����д�������ַ����ȷ��");
			 document.form.Email.focus();
			 return false; 
		 }

		
		
		
		
if (form.Tel.value=="")
		{
			alert ("�Բ������������ĵ绰���ѷ���������ϵ!");
			form.Tel.focus();
			return false;
		}
		
		if (form.jianli.value=="")
		{
			alert ("�Բ������������ļ�����");
			form.jianli.focus();
			return false;
		}
		
		
		
		
		

		if ( form.jianli.value.length < 10)
		{
			alert("�Բ��𣬼������Ȳ�������10λ��");
			form.jianli.focus();
			return false;
		}

		if ( form.jianli.value.length > 1000)
		{
			alert("�Բ��𣬼������ܳ���1000λ��");
			form.jianli.focus();
			return false;
		}
		
		
		
		
		
		
		
		
		
<!--if (form.City.value=="")
		
		<!--{
		<!--	alert ("�Բ��������������ڵ���/��/������ƣ�");
		<!--	form.City.focus();
		<!--	return false;
		<!--}
		
		<!--if (form.Address.value=="")
	<!--	{
		<!--	alert ("�Բ�����������ϵ��ַ��");
		<!--	form.Address.focus();
		<!--	return false;
		<!--}		

		<!--if ( form.Address.value.length < 7)
		<!--{
		<!--	alert("�Բ���������ϵ��ַ����ϸ��");
		<!--	form.Address.focus();
		<!--	return false;
	<!--	}


 <!--if (form.Postnumber.value==""){
  <!--  alert("�Բ����������������룡");
   <!-- form.Postnumber.focus();
    <!--return false;
<!--  }
  
  <!--if (form.Postnumber.value.length!=6){
   <!-- alert("�Բ���������6λ���������룡");
   <!-- form.Postnumber.focus();
    <!--return false;
  <!--}

      <!--  if (!CheckIfDec(document.form.Postnumber.value ))
      <!--  {
		<!--alert("�Բ������������������ֹ��ɵģ��벻Ҫ��д�����ַ���ȫ�����֣�");
		<!--document.form.Postnumber.focus();
		<!--return false;
    	<!--}		

		<!--if (form.Tel.value=="")
		<!--{
		<!--	alert ("�Բ�������������ϵ�绰��");
		<!--	form.Tel.focus();
			<!--return false;
		<!--}		

       <!-- if (!CheckIfDec(document.form.Tel.value ))
     <!--   {
		<!--alert("�Բ�����ϵ�绰Ӧ�����ּ��к��ߡ�-������\n\n�벻Ҫ��д�����ַ���ȫ������");
	<!--	document.form.Tel.focus();
		<!--return false;
    	<!--}		

	<!--	if ( form.Tel.value.length < 11)
		<!--{
		<!--	alert("�Բ������ĵ绰����λ�����㣡");
		<!--	form.Tel.focus();
		<!--	return false;
		<!--}

	
return true;
}