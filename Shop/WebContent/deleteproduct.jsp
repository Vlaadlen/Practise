<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete information</title>
</head>
<body bgcolor="#20B2AA">
  <p>Below information will be deleted:</p>
  <p>information id ${param.phone_id}</p>
  <p>Name ${param.phone_name}</p>
  <p>Number ${param.phone_description}</p>
  <p>Could you please confirm?</p>
  <c:url var="productUrl" value="/product.jsp"/>
  <form method="post" action="product">
    <input type="hidden" name="actiontype" value="deleteproduct"/>
    <input type="hidden" name="phone_id" value="${param.phone_id}">
    <input type="submit" name="deleteproduct" value="Delete information">
    <input type= "button" onclick="window.location.href='${productUrl}'" 
      value="Cancel">
  </form>
</body>
</html>
