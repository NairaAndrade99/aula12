<%-- 
    Document   : index
    Created on : 9 de mai. de 2022, 21:22:57
    Author     : Fatec
--%>
    <%@page import="model.Funcionario" %>
    <%@page import="model.Cliente" %>
<%
    Exception requestEx = null;
    int countCliente = 0;
    int countFuncionario = 0;
    try{
        countCliente = Cliente.getCount();        
        countFuncionario = Funcionario.getCount();
    }catch(Exception ex){
        requestEx = ex;
    }
    

    %>


    <%@page import="java.util.ArrayList" %>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Índice Quantidades Clientes e Funcionários</title>
    </head>
    <body>
        <h1>Links</h1>
        <div>
            <% if(requestEx != null){ %>
            <h2 style="color:red;"> <%= requestEx.getMessage() %></h2>
        
        
        <%}%>
            <h3>Total de registros de Clientes: <%= countCliente %></h3><a href="ListaClientes.jsp">Lista de Clientes</a>
            <br><hr/>
            <h3>Total de registros de Funcionários: <%= countFuncionario %></h3><a href="ListaFuncionarios.jsp">Lista de Funcionários</a>
            
        </div>
    </body>
</html>
