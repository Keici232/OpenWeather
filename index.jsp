<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

 <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
<link href="style.css" rel="stylesheet">

</head>
<body>




<form action="<%= request.getContextPath() %>/OWservlet" method="get" class="form">  
 
    
    
    


<label class="mdc-text-field mdc-text-field--filled">
  <span class="mdc-text-field__ripple"></span>
  <span class="mdc-floating-label" id="my-label-id"></span>
 City: <input name="city" class="mdc-text-field__input" type="text" aria-labelledby="my-label-id">
  <span class="mdc-line-ripple"></span>
</label>
<br>
<br>
<label class="mdc-text-field mdc-text-field--filled">
  <span class="mdc-text-field__ripple"></span>
  <span class="mdc-floating-label" id="my-label-id"></span>
 Country: <input name="country" class="mdc-text-field__input" type="text" aria-labelledby="my-label-id">	
  <span class="mdc-line-ripple"></span>
</label><br><br>
  <input type="submit" value="go" class="mdc-button mdc-button--touch" />  
    
    </form>  


</body>
</html>