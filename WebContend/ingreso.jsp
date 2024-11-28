<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
	
	<style type="text/css">
		.error {
			color: red;
			font-weight: bold;
		}
	</style>
</head>
<body>

	<div class="contaimer">
		<div class="row">
			<div class="col-4"></div>
			<div class="col-4">
				<form action="login" method="post" name="formIngreso">
					<div class="form-group">
						<label>Usuario</label> <input type="text" name="usuario"
							id="usuario" placeholder="usuario" class="form-control" />
					</div>
					<div class="form-group">
						<label>Clave</label> <input type="password" name="clave"
							id="clave" placeholder="clave" class="form-control" />
					</div>
					<br /> <input type="submit" value="Iniciar Sesion"
						class="btn btn-outline-primary" />
				</form>


			</div>
			<div class="col-4"></div>
		</div>
	</div>



<script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.5.1.js" ></script>
<script type="text/javascript" language="javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.js" ></script>
<script type="text/javascript" language="javascript">
	$(function () {
	$('form[name="formIngreso"]').validate({
		rules: {
			usuario: {
				required: true
			},
			clave: {
				required: true
			}
		},
		messages: {
			usuario: {
				required: 'El nombre es obligatorio'
			},
			clave: {
				required: 'la clave es obligatorio'
			}
			
		},
		
		
			submitHandler: function (form){
				form.submit();
			}
		});
});
	
</script>
</body>
</html>