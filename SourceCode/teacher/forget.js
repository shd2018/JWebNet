
function check_form(){

		if (form.Username.value=="")
		{
			alert ("�Բ��������������ţ�");
			form.Username.focus();
			return false;
		}if ( form.Username.value.length < 4)
		{
			alert("�Բ��𣬹��Ų�������4λ");
			
			form.Username.focus();
			return false;
		}

		if ( form.Username.value.length > 15)
		{
			alert("�Բ��𣬹��Ų��ܶ���15λ");
			form.Username.focus();
			return false;
		}
		
	
			if (form.name.value=="")
		{
			alert ("�Բ�����������Ϊ��!");
			form.name.focus();
			return false;
		}
		if (form.Email.value=="")
		{
			alert ("�Բ���������Email!");
			form.Email.focus();
			return false;
		}

		
		
		
    	var Email1=document.form.Email.value;
	if(Email1.length<1)
	{
		alert("����д�����ַ��");
		document.form.Email.focus();
		return false;
	}

	 invalidChars = "/;,:{}[]|*%$#!()`<>?"; 

		for (i=0; i< invalidChars.length; i++) 
			{ 
		  badChar = invalidChars.charAt(i) 
		  if (Email1.indexOf(badChar,0) > -1) 
				 {
			  alert("����д�������ַ����ȷ��");
			  document.form.Email.focus();
		      return false; 
				 } 
			} 
		atPos = Email1.indexOf("@",1) 
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
		 periodPos = Email1.indexOf(".",atPos) 
		if(periodPos == -1) 
			 { 
			 alert("����д�������ַ����ȷ��");
			 document.form.Email.focus();
			 return false; 
			 } 
		if ( atPos +2 > periodPos) 
		 { 
			alert("����д�������ַ����ȷ��");
			document.form.Email1.focus();
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