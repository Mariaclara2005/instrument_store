<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">

<head>
 <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/views/user/CodigoConfirm/codconfirmm.css">
    <link rel="icon" href="../../../img/logoIcon.png" type="image/x-icon">
    <title>Codigo de Confirmação</title>
</head>

<body>

    <header>
        <a href="${pageContext.request.contextPath}/views/home/Home.jsp">
         <img src="${pageContext.request.contextPath}/img/logo.png" alt="" id="img-logo">
          </a>
     
    </header>

    <div class="box1">
    <div class="Insiracodigo">
       <p>Insira o código</p>
    </div>
    <div action="${pageContext.request.contextPath}/CodigoConfirmar" method="post" class="code-input">
      <input type="text" maxlength="1">
      <input type="text" maxlength="1">
      <input type="text" maxlength="1">
      <input type="text" maxlength="1">
      <input type="text" maxlength="1"> 

    </div>
    <a href="../../pages/nova senha/novasenha.html">
    
     <button herf="confirmar-email?token=${token}">Enviar</button> 
   </a>
</div>


</body>

</html>