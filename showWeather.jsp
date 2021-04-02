<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="model.weatherBean"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
<link href="style.css" rel="stylesheet">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class = "text">



	<%
	

	weatherBean wBean = (weatherBean) request.getAttribute("wBean");
	out.print("The weather in " + wBean.getCityStr() +" is " + wBean.getCloudsStr());
	out.print("<br>Country:  " + wBean.getCountryStr());

	out.print("<br>Today is: " + (new java.util.Date()).toLocaleString());

	Cookie[] cookies = request.getCookies();

	if (cookies != null) {

		out.println("<br><br><br>Tidigare sökning: ");
		out.println("<ul class=\"mdc-list\">");
		for (Cookie temp : cookies) {
			if (!temp.getName().equals("JSESSIONID")) {
				
				
				
		out.println("<li class=\"mdc-list-item\" tabindex=\"0\">" + "  <span class=\"mdc-list-item__ripple\"></span>"+ temp.getValue() + "</li>");
		
		
		
		
			}
		}
		out.println("</ul>");
	}

	%>

</div>






</body>
</html>