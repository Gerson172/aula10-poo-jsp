<%-- 
    Document   : index.jsp
    Created on : 25 de abr. de 2022, 19:33:30
    Author     : Fatec
--%>
<%@page import="demo.Contato" %>
<%@page import="demo.Data" %>
<%@page import="demo.Database" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Data hoje = new Data();
    hoje.setAno(2022);
    hoje.setMes(4);
    hoje.setDia(25);
    
    Data amanha = new Data();
    amanha.setData(26,4,2022);
    
    Data nascimento = new Data(28,4,2002);
    
    
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal</title>
    </head>
    <body>
        <h1>Poo - Exemplos</h1>
        <h2>Index</h2>
        <h3>Exemplos com datas </h3>
        <h4>hoje é <%= hoje.getDia() %> </h4>
        <h4>Amanhã é <%= amanha.getData() %> </h4>
        <h4>Meu aniversário é <%= nascimento.getAniversario() %> </h4>
        <hr>
        <h3> Exemplos de listagem de contatos:</h3>
        
        <table border="1">
            <tr><th>Nome</th><th>Telefone</th><th>Aniversário</th></tr>
            <%for(Contato c: Database.getContato
        
        
        ()){%>
            <tr>
                <td><%= c.getNome() %></td>
                <td><%= c.getTelefone() %></td>
                <td><%= c.getNascimento().getAniversario() %></td>
            </tr>
            <%}%>
        </table>

    </body>
</html>
