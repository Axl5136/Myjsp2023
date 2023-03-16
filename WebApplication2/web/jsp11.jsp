<%-- 
    Document   : jsp11
    Created on : 15 mar. 2023, 17:20:12
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css1.css">
    </head>
    <body>
        
      
        
        <br><br>
        
     <div class="container-lg"><h1><center>Holaaaaa este es una calculadora</center></h1>
         <div class="container-lg"><h4><center>Esta calculadora se basa en calcular numeros aleatorios y determinar si son mayores o menores de numeros ya dados</center></h4>
            <div class="card">
  <div class="card-body">
    

        <%
            int x = (int)((Math.random() * 100));
            if(x < 100)
            {
        %>
        <h1>Es menor a 100</h1>
        <%
            }
            else
            {
       %>
       <h1>Es mayor o igual a 100</h1>
       <% 
           }       
        %>
        <h1>El numero 1 es: <%=x%></h1>
       
          </div>
</div>
        
             <br><br><br>
        <div class="card">
  <div class="card-body">

         <%
            int r = (int)((Math.random() * 100));
            if(r < 95)
            {
        %>
        <h1>Es menor a 95</h1>
        <%
            }
            else
            {
       %>
       <h1>Es mayor o igual a 95</h1><br>
       <% 
           }       
        %>
        <h1>El numero 2 es: <%=r%></h1>
  </div>
</div>
        <br><br><br>
        
  <div class="card">
  <div class="card-body">
    
        
         <%
            int e = (int)((Math.random() * 100));
            if(e < 90)
            {
        %>
        <h1>Es menor a 90</h1>
        <%
            }
            else
            {
       %>
       <h1>Es mayor o igual a 90</h1>
       <% 
           }       
        %>
        <h1>El numero 3 es: <%=e%></h1>
  </div>
</div>
  <br><br><br>
  <div class="card">
  <div class="card-body">
    
        
         <%
            int h = (int)((Math.random() * 100));
            if(h < 80)
            {
        %>
        <h1>Es menor a 80</h1>
        <%
            }
            else
            {
       %>
       <h1>Es mayor o igual a 80</h1>
       <% 
           }       
        %>
        <h1>El numero 4 es: <%=h%></h1>
     </div>
    </div>
     <br><br><br>
    <div class="card">
  <div class="card-body">
    
        
         <%
            int j = (int)((Math.random() * 100));
            if(j < 70)
            {
        %>
        <h1>Es menor a 70</h1>
        <%
            }
            else
            {
       %>
       <h1>Es mayor o igual a 70</h1>
       <% 
           }       
        %>
        <h1>El numero 5 es: <%=j%></h1>
     </div>
    </div> 
     <br><br>
     
     
     <div class="accordion accordion-flush" id="accordionFlushExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingOne">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
        Ver el numero 6
      </button>
    </h2>
    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">
          
     <%
            int k = (int)((Math.random() * 100));
            if(k < 60)
            {
        %>
        <h1>Es menor a 60</h1>
        <%
            }
            else
            {
       %>
       <h1>Es mayor o igual a 60</h1>
       <% 
           }       
        %>
        <h1>El numero 6 es: <%=k%></h1>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
        Ver el numero 7
      </button>
    </h2>
    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">
          
<%
            int l = (int)((Math.random() * 100));
            if(l < 50)
            {
        %>
        <h1>Es menor a 50</h1>
        <%
            }
            else
            {
       %>
       <h1>Es mayor o igual a 50</h1>
       <% 
           }       
        %>
        <h1>El numero 7 es: <%=l%></h1>
       
      
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
       Ver el numero 8
      </button>
    </h2>
    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">
          
<%
            int n = (int)((Math.random() * 100));
            if(n < 40)
            {
        %>
        <h1>Es menor a 40</h1>
        <%
            }
            else
            {
       %>
       <h1>Es mayor o igual a 40</h1>
       <% 
           }       
        %>
        <h1>El numero 8 es: <%=n%></h1>
      
      </div>
    </div>
  </div>
      
      
      <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingFour">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
        Ver el numero 9
      </button>
    </h2>
    <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">
          
     <%
            int p = (int)((Math.random() * 100));
            if(p < 30)
            {
        %>
        <h1>Es menor a 30</h1>
        <%
            }
            else
            {
       %>
       <h1>Es mayor o igual a 30</h1>
       <% 
           }       
        %>
        <h1>El numero 9 es: <%=p%></h1>
      </div>
    </div>
  </div>
      
      
      <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingFive">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
        Ver el numero 10
      </button>
    </h2>
    <div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">
          
     <%
            int z = (int)((Math.random() * 100));
            if(z < 20)
            {
        %>
        <h1>Es menor a 20</h1>
        <%
            }
            else
            {
       %>
       <h1>Es mayor o igual a 20</h1>
       <% 
           }       
        %>
        <h1>El numero 10 es: <%=z%></h1>
      </div>
    </div>
  </div>
      
      
     
      
      
      
</div>
     <br><br><br><br><br><br>
     
     
</div>

        
        
        

    </body>
</html>
