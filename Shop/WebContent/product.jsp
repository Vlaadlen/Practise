<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Product list</title>
</head>
<body bgcolor="#20B2AA">
  <jsp:useBean id="productListBean" 
    class="ua.cn.stu.databean.ProductListDatabean"/>
  <h1 align="center">Leave your details</h1>
  <form method="post" action="product">
    <table bordercolor="black" style="width:100%" border="4" bgcolor="#20B2AA" rules="all">
      <tr height="50px" align="center">
        <td>Id</td>
        <td>Name</td>
        <td>Number</td>
        <td>Action</td>
      </tr>
      <tr align="center">
        <td>
        </td>
        <td>
          <input type="text" name="phone_name" required autofocus size="20" maxlength="12"/>
        </td>
        <td>
          <input type="number" maxlength="12" name="phone_description" required size="20" />
        </td>
        <td>
          <input type="hidden" name="actiontype" value="addproduct"/>
          <input type="submit" name="addproduct" value="Add information">
        </td>
      </tr>
    </table>
  </form>
</body>
</html>

   