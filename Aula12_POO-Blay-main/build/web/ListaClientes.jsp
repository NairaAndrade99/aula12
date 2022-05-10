<%-- 
    Document   : ListaClientes
    Created on : 9 de mai. de 2022, 21:23:24
    Author     : Fatec
--%>


<%@page import="model.Cliente" %>
<%@page import="java.util.ArrayList" %>

<%
    Exception requestEx = null;
    ArrayList<Cliente> list = new ArrayList<>();
    try{
        list = Cliente.getList();      
    }catch(Exception ex){
        requestEx = ex;
    }
    

    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cliente - Blay</title>
    </head>
    <body>
        <h1>JDBC</h1>
        <% if(requestEx != null){ %>
            <h2 style="color:red;"> <%= requestEx.getMessage() %></h2>
            <%}%>
            
        <table style="font-family: cursive; padding: 8px" border="2px" >
                <tr><th>id</th><th>name</th></tr>
            <% for(Cliente c: Cliente.getList()) {%>
            <tr>
                <td><%= c.getId() %></td>
                <td><%= c.getName() %></td>
            </tr>
            <%}%>
        </table>
    
    
    </body>
</html>
