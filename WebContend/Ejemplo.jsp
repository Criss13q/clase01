<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hola bienvenido a mi página con <span id="jquery">JQuery</span></h1>
	<p>Este es un <span class="texto">ejemplo</span></p>	
	
	<button id="btnProcesar">Procesar</button>
	
	<button id="btnMostrar">Mostrar</button>
	<button id="btnOcultar">Ocultar</button>
	
<script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.5.1.js" ></script>
<script type="text/javascript" language="javascript">
	$(function name() {
		
		//ejemplo de selectores
		$('h1').css('color', 'red')
		$('#jquery').css('color','blue')
		$('.texto').css('color','green')
		
		//ejemplo de 
		$('#btnProcesar').on('clik', function () {
			$.ajax({
				url: 'fornt',
				method: 'post',
				success: function (result){
					$('.texto').html(result);
				}
			});
		});
		
		$('#btnMostrar').on('clik', function () {
			$('#btnProcesar').show();
		});
		
		$('#btnOcultar').on('clik', function () {
			$('#btnOcultar').hide();
		});
		

	});
</script>

</body>
</html>