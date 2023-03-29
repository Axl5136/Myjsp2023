<%-- 
    Document   : jsp3
    Created on : 16 mar 2023, 13:04:14
    Author     : alumno
*Alumno: Rodriguez Frias Axel Isaias 
*Grupo: 4IM9
*Fecha: 28/03/2023
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.gerdoc.Datos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="cssJsp3.css">
        <title>JSP Page</title>
        
    </head>
    <body>
        <%
            String nombre = null;
            String calif = null;
            String guardar = null;
            String id = null;
            String editar = null;
            String accion = "guardar";
            String actualizar = "guardar";
            Datos datos = null;
            Integer idx = null;
            List<Datos>lista = null;
            
            session = request.getSession( true );
            if( session != null )
            {
                if( session.getAttribute("lista") == null )
                {
                    session.setAttribute("lista", new ArrayList<Datos>());
                }
                lista = (List)session.getAttribute("lista");
            }
            nombre = request.getParameter( "nombre" );
            calif = request.getParameter( "calif" );
            guardar = request.getParameter( "guardar" );
            id = request.getParameter( "id" );
            editar = request.getParameter( "editar" );
            actualizar = request.getParameter( "actualizar" );
            
            if( "Submit".equals( editar ) )
            {
                idx = Integer.parseInt( id );
                if( idx < lista.size() )
                {
                    datos = lista.get( idx );
                }
                accion = "actualizar";
            }
            
            if( "Submit".equals( guardar ) || "Submit".equals( actualizar ) )
            {
                if( "Submit".equals( guardar ) )
                {
                    datos = new Datos( );
                }
                else
                {
                    datos = lista.get( Integer.parseInt( id ) );
                }
                datos.setNombre(nombre);
                datos.setCalf( Float.parseFloat( calif ) ); 
                if( "Submit".equals( guardar ) )
                {
                    lista.add( datos );
                }
        %>
                
                <script>
                    console.log("Exito");
                </script>
                
                
                <div class="alert alert-success" role="alert">
  <h4 class="alert-heading">Bien Hecho!</h4>
  <p>Se han agregado exitosamente los datos(Nombre y Calificacion)</p>
  <hr>
  <p class="mb-0">Puedes agregar mas datos ingresando a este <a href="jsp2.jsp">Link </a>, vamos!</p>
</div>
        <%
            }
            if( datos == null )
            {
                datos = new Datos( );
                datos.setNombre( "" );
                datos.setCalf( 0f );

            }
            if( !"Submit".equals( guardar ) && !"Submit".equals( actualizar ) )
            {
        %>  
        <br><br>
            <form>

               <div class="input-group">
                    
                     <span class="input-group-text">Nombre</span>    
                    <input type="text" id="nombre" name="nombre" aria-label="First name" class="form-control" value="<%=datos.getNombre()%>">
               </div>
               
               
               
               
               
               <br>
               <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">CALIFICACION</label>
                        <input type="number" class="form-control" id="number0" name="calif" value="<%=datos.getCalf()%>">    
                            <%
                                if ("Submit".equals(editar)) {
                            %>
                            <input type="hidden" name="id" id="id" value="<%=id%>" />
                            <%
                                }
                            %>
                        
                    </div><!-- comment -->
                    
                    
                         
                            <input  type="submit" id="Guardar" name="<%=accion%>" class="btn btn-primary"/>
                            
                        <br>
                    
                </table>
            </form>
        <br><br>
        <%
            }
        %>
    </body>
</html>
