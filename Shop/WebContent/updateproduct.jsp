<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update information</title>
</head>
<body bgcolor="#20B2AA">
  <p>Please update information fields and press
    Update information button or press Cancel button.</p>
  <c:url var="productUrl" value="/product.jsp"/>
  <form method="post" action="product">
    <input type="hidden" name="actiontype" value="updateproduct"/>
    <input type="hidden" name="phone_id" value="${param.phone_id}"/>
    <p>Id: <c:out value="${param.phone_id}"/></p>
    <p>Name:
    <input type="text" name="phone_name" value="${param.phone_name}"/></p>
    <p>Number:
    <input type="text" name="phone_description" 
      value="${param.phone_description}"/></p>
    <input type="submit" name="deleteproduct" value="Update information"/>
    <input type= "button" onclick="window.location.href='${productUrl}'" 
      value="Cancel">
  </form>
</body>
</html>
