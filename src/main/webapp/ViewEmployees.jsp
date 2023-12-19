<%@page import="org.employee_management_system.dto.Employee"%>
<%@page import="java.util.List"%>
<%@page import="org.employee_management_system.dto.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee</title>
<link rel="stylesheet" href="Css/employeedetails.css">
</head>
<body style="background-image: linear-gradient(rgba(0, 0, 0, 0.65), rgba(0, 0, 0, 0.65)), url(Employee.jpg)">
  
   <%
   Admin admin=(Admin)session.getAttribute("admin");
   if(admin!=null){
   List <Employee> employees=(List) request.getAttribute("allEmployees"); %>
   
   <h1>Employees list</h1>
   
   <table border="" cellPadding="10px" cellSpacing="0">
       <tr>
            <th>Employee_Id</th>
            <th>Employee_Name</th>
            <th>Employee_Email</th>
            <th>Employee_PhNo</th>
            <th>Employee_Salary</th>
            <th>Update_Employee</th>
            <th>Delete_Employee</th>
       </tr>
       
       <%for(Employee employee:employees){ %>
       <tr>
            <td><%=employee.getEmployeeId()%></td>
            <td><%=employee.getEmployeeName()%></td>
            <td><%=employee.getEmployeeEmail()%></td>
            <td><%=employee.getEmployeePhoneNumber()%></td>
            <td><%=employee.getEmployeeSalary()%></td>
            <td><a href="updateEmployee?employeeId=<%=employee.getEmployeeId()%>">Update</a></td>
            <td><a href="deleteEmployee?employeeId=<%=employee.getEmployeeId()%>">Delete</a></td>
       </tr>
       <% } %>
   </table>
   <div><a href="Dashboard.jsp" class="dash">Dashboard</a></div>
   <% } else{
	   response.sendRedirect("Home.jsp");
   }
   %>
</body>
</html>