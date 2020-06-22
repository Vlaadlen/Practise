<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>My information</title>
</head>
<body>
  <jsp:useBean id="productListBean" 
    class="ua.cn.stu.databean.ProductListDatabean"/>
  <h1>My information</h1>
  <form method="post" action="product">
    <table bordercolor="black" style="width:100%" border="4" bgcolor="#20B2AA" rules="all">
      <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Number</td>
        <td>Action</td>
      </tr>
      <c:forEach var="product" items="${productListBean.productList}">
        <tr>
          <td>
            <c:out value="${product.id}"/>	
          </td>
          <td>
            <c:out value="${product.name}"/>
          </td>
          <td>
            <c:out value="${product.description}"/>
          </td>
          <td>
            <c:url var="deleteUrl" value="/deleteproduct.jsp">
              <c:param name="phone_id" value="${product.id}"/>
              <c:param name="phone_name" value="${product.name}"/>
              <c:param name="phone_description" 
                value="${product.description}"/>
            </c:url>
            <c:url var="updateUrl" value="/updateproduct.jsp">
              <c:param name="phone_id" value="${product.id}"/>
              <c:param name="phone_name" value="${product.name}"/>
              <c:param name="phone_description" 
                value="${product.description}"/>
            </c:url>
            <p><a href="${deleteUrl}">Delete information</a></p>
            <p><a href="${updateUrl}">Update information</a></p>
          </td>
        </tr>
      </c:forEach>

    </table>
  </form>
</body>
</html>

   