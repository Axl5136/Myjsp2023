<%-- 
    Document   : jsp2
    Created on : 14 mar 2023, 13:12:32
    Author     : alumno
--%>

<%@page import="java.util.List"%>
<%@page import="org.gerdoc.Datos"%>
<%@page import="org.gerdoc.Negocio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="cssjsp2.css">
    </head>
    <body>
        <br>
        <br><!-- comment -->
        <br><!-- comment -->
  <div class="container-lg"><h1><center>DATOS AGREGADOS</center></h1>
      <br>
      <br>
      <br>
        <%
            int i = 0;
            List<Datos> lista = null;
            String id = null;
            String borrar = null;
            session = request.getSession( true );
            
            if( session != null )
            {
                if( session.getAttribute("lista") != null )
                {
                    lista = (List)session.getAttribute( "lista" );
                }
            }
            id = request.getParameter( "id" );
            borrar = request.getParameter( "borrar" );
            if( "Submit".equals( borrar ) )
            {
                lista.remove( Integer.parseInt(id) );
            }
        %>
           <div  class="table table-hover">
        <table class="table table-dark table-hover" border="1">
            <tr>
                <td>#</td>
                <td>Id</td>
                <td>Nombre</td>
                <td>Cal</td>
                <td>Acciones</td>
            </tr>
            <%
              if( lista != null && !lista.isEmpty() )
              {
                for( Datos datos : lista)
                {
            %>
            <tr>
                <td><%=i + 1%></td>
                <td><%=i%></td>
                <td><%=datos.getNombre( )%></td>
                <td><%=datos.getCalf()%></td>
                <td>
                    <a href="jsp2.jsp?id=<%=i%>&borrar=Submit">Borrar</a>
                    <a href="jsp3.jsp?id=<%=i++%>&editar=Submit">Editar</a>
                </td>
            </tr>
            <%
                }
              }
            %>
        </table><br><br><br>
<a href="jsp3.jsp" class="btn btn-primary btn-lg" tabindex="-1" role="button" aria-disabled="true">Agregar mas Datos</a>
<a href="index.html" class="btn btn-secondary btn-lg" tabindex="-1" role="button" aria-disabled="true">Menu Principal</a>
    </body>
</html>
