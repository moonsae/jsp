<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="acorn.Customer" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에이콘학생리스트</title>
<style>
    h2 {
        text-align: center;
    }

    table {
        width: 80%;
        margin: 0 auto;
        border-collapse: collapse;
    }

    th, td {
        padding: 10px;
        text-align: center;
    }

    th {
        background-color: #333;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }
</style>
</head>
<body>
<h2>에이콘학생리스트</h2>
<% ArrayList<Customer> list = (ArrayList<Customer>)request.getAttribute("list"); %>
<table>
    <tr>
        <th>ID</th>
        <th>Password</th>
        <th>Name</th>
    </tr>
    <% for(int i=0; i<list.size(); i++){ %>
    <tr>
        <td><%= list.get(i).getId()%></td>
        <td><%= list.get(i).getPw()%></td>
        <td><%= list.get(i).getName()%></td>
    </tr>
    <% } %>
</table>
</body>
</html>