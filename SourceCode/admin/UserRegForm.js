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
			alert ("�Բ�������������ע����û��ʺţ�");
			form.Username.focus();
			return false;
		}
		
		
		
		

	if(/[^a-zA-Z0-9_]/g.test(document.form.Username.value) || /[^a-zA-Z]/g.test(document.form.Username.value.substr(0,1)))
	{
		alert("�û���ֻ�������ֻ�Ӣ��,���ұ���ΪӢ����ĸ��ͷ!");
		document.form.Username.focus();
		return false;
	}


    var Username=document.form.Username.value;
    var check_Username = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
  
    
		if (check_Username.indexOf(Username.charAt(i))==-1) 
        {
		alert("�û��ʺ�ֻ������ĸ�����ֹ��ɣ�������4-15λ֮�䡣");
		document.form.Username.focus();
		return false;
    	}
    	
		if ( form.Username.value.length < 4)
		{
			alert("�Բ����û��ʺŲ�������4λ");
			form.Username.focus();
			return false;
		}

		if ( form.Username.value.length > 10)
		{
			alert("�Բ����û��ʺŲ��ܶ���10λ");
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
    alert("�Բ�����������������벻��ͬ�����������룡");
    form.Password1.focus();
    return false;
  }

   if (form.Password.value!=form.Password1.value){
    alert("�Բ�����������������벻��ͬ�����������룡");
    form.Password1.focus();
    return false;
}


		
		
		if (form.questionid.value=="")
		{
			alert ("�Բ�����ѡ��ȫ��ʾ�ʴ�,���������Ա��һ�!");
			form.questionid.focus();
			return false;
		}
if (form.da.value=="")
		{
			alert ("�Բ��������밲ȫ��ʾ�ʴ�Ĵ�,���������Ա��һ�!");
			form.da.focus();
			return false;
		}
		if (form.Province.value=="")
		{
			alert ("�Բ�����ѡ�������ڵ�ʡ�ݣ�");
			form.Province.focus();
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

return true;
}