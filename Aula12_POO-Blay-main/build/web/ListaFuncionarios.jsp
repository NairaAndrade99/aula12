<%-- 
    Document   : ListaFuncionarios
    Created on : 9 de mai. de 2022, 21:23:33
    Author     : Fatec
--%>
<%@page import="model.Funcionario" %>
<%@page import="java.util.ArrayList" %>

<%
    Exception requestEx = null;
    ArrayList<Funcionario> list = new ArrayList<>();
    try{
        list = Funcionario.getList();        
    }catch(Exception ex){
        requestEx = ex;
    }
    

    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Funcionários - Blay</title>
    </head>
    <body>
        <h1>JDBC</h1>
        <% if(requestEx != null){ %>
            <h2 style="color:red;"> <%= requestEx.getMessage() %></h2>
            <%}%>
        <center><table style="font-family: cursive; padding: 8px" border="2px" >
                <tr><th>id</th><th>name</th></tr>
            <% for(Funcionario f: Funcionario.getList()) {%>
            <tr>
                <td><%= f.getId() %></td>
                <td><%= f.getFirstName() %></td>
            </tr>
            <%}%>
        </table></center>
    
    </body>
</html>
