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
	<div class="container">
	<div class="row">
		<div class="col-4"></div>
		<div class="col-4">
			<form action="" name="registro">
				<div class="form-group">
					<label>Nombres</label>
					<input type="text" name="nombres" class="form-control">
				</div>
				<div class="form-group">
					<label>DNI</label>
					<input type="text" name="dni" class="form-control">
				</div>
				<div class="form-group">
					<label>Edad</label>
					<input type="text" name="edad" class="form-control">
				</div>
				<div class="form-group">
					<label>Paguina web</label>
					<input type="text" name="web" class="form-control">
				</div>
				<div class="form-group">
					<label>Correo</label>
					<input type="text" name="correo" class="form-control">
				</div>
				<div class="form-group">
					<label>Clave</label>
					<input type="password" name="clave" class="form-control">
				</div>
				<br />
				<br />
				<input type="submit" value="Enviar datos" class="btn btn-primary">
			</form>
		</div>
		<div class="col-4"></div>
	</div>
</div>




<script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.5.1.js" ></script>
<script type="text/javascript" language="javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.js" ></script>
<script type="text/javascript" language="javascript">
	$(function () {
		$('form[name="registro"]').validate({
			rules: {
				nombres: {
					required: true
				},
				dni: {
					required: true,
						minlength: 8,
						maxlength: 8,
						digits: true
			},
			edad: {
					required: true,
					digits: true,
					min: 18,
					msx: 60, 
					minlength: 2,
					maxlength: 2
				},
				web: {
					url: true
				},
				correo: {
					email: true
				},
				clave: {
					required: true,
					minlength: 6,
					maxlengh: 12
				}
			},
			messages:{
				nombres: {
					required: 'El campo nombres es obligatorio'
				},
				dni:  {
					required:'El campo DNI es obligatorio',
					minlength: 'Debe tener 8 digitos',
					maxlength: 'debe tener 8 digitos',
					digits: 'solo debe ingresar numeros'
				},
				edad: {
					required: 'Es obligatorio',
					digits: 'Solo numeros',
					min: 'Mayor de edad',
					max: 'No anciano',
					minlength: 'Debe ser de 2 dijitos',
					maxlength: 'Debe ser de 2 digitos'
				},
				web: {
					url: 'Debe ser una direccion web'
				},
				correo: {
					email: 'Debe ser un email válido'
				},
				clave: {
					required: 'es obligatorio',
					minlength: 'Min 6 caracteres',
					maxlength: 'max 12 caracteres'
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