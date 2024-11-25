<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <!DOCTYPE html>
   <html>
   <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/views/user/login/LoginUser.css">
    <link rel="icon" href="../../../img/logoIcon.png" type="image/x-icon">
    <title>Login</title>
   </head>
   
 <body>
    <header>
        <a href="${pageContext.request.contextPath}/views/home/Home.jsp">
         <img src="${pageContext.request.contextPath}/img/logo.png" alt="" id="img-logo">
          </a>
       </header>


       <div class="Container">
        <div class="Box1">
          <div class="imagem1">
            <img src="${pageContext.request.contextPath}/img/logo.png" alt="" id="img1">
               <p>Login</p>
            </div>
            </div>
            

    <form action="${pageContext.request.contextPath}/ServletLoginUser"  method="post">
       <div class="email-senha">
        <input type="text" placeholder="Email" id="email">
        <input type="password" placeholder="Senha" id="senha">
       </div>
       
        <div class="Recsenha">
           <a href="${pageContext.request.contextPath}/views/user/Recuperar senha/recsenha.jsp">Recuperar senha</a>
        </div>
         <div class="Cadastro-Entrar">
              <button type="submit"name="Entrar" id="entrar">Entrar</button>
         <% 
                		if(request.getAttribute("erro") != null){
                			out.print("<p id=\"erro\">");
                				out.print(request.getAttribute("erro"));
                			out.print("<p>");
                			}
                	 %>
                	 <br>
         <a href="${pageContext.request.contextPath}/views/user/cadastro/CadastroUser.jsp" id="cadastro">Cadastrar</a>
         </div>
    </form>
       </div>
    <jsp:include page="../../../includes/Footer.jsp" />
</body>
</html>