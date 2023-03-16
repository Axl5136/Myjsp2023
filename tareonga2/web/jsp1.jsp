<%-- 
    Document   : jsp2
    Created on : 15 mar 2023, 19:14:12
    Author     : Axl5136
--%>

<%@page import="javita.javadatos"%>
<%@page import="javita.clasesitanegocio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="images/favicon.ico">
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>
        
     
        <% 
            clasesitanegocio negocio = new clasesitanegocio();
            int numero = (int)(Math.random()*20);
            String cad = String.format("?numero=%d", numero);
        %>
        
            
      
        <div class="container-fluid">
            <div class="container-lg"><h1><center>Holaaaaa este es una calculadora</center></h1>
            <br><!-- comment -->
            <br><!-- comment -->
           <div class="container-lg"><h4><center>Holaaaaa este es una calculadora</center></h4>
               
</div>
        
       
        
        <table class="table table-light table-sm table-responsive" style="margin-left: 10%; margin-right: 30%">
          <thead>
            <tr class="table-info">
              <th scope="col">Nombre</th>
              <th scope="col">Calificaci&oacute;n</th>
            </tr>
          </thead>
          <tbody class="table-group-divider">
            <%
                if(negocio.getLista() != null && ! negocio.getLista().isEmpty())
                {
                    for(javadatos datos : negocio.getLista())
                    {
            %>
            <tr>
                <td><%=datos.getName()%></td>
                <td><%=datos.getGrade()%></td>
            </tr>
            <%
                    }
                }
            %>
          </tbody>
        </table>
            
       
    </body>
</html>