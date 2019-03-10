<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Demo Ajax</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#buttonConfirmar').click(function(){
			var nome = $('#nome').val();
			$.ajax({
				type: 'POST',
				data: {
					nome: nome,
					action: 'demo1'
				},
				url: 'AjaxController',
				success: function(result){
					$('#result1').html(result);
				}
			});
		});
		
		$('#buttonSomar').click(function(){
			var numero1 = $('#numero1').val();
			var numero2 = $('#numero2').val();
			$.ajax({
				type: 'POST',
				data: {
					numero1: numero1, 
					numero2: numero2,
					formId: formId, 
					formName: formName,
					action: 'demo2'
				},
				url: 'AjaxController',
				success: function(result){
					$('#result2').html(result);
				}
			});
		});
	});
</script>
</head>
<body>

<fieldset>
	<legend>Demo 1</legend>
	<form>
		Nome <input type="text" id="nome">
		<input type="button" value="Confirmar" id="buttonConfirmar">
		<br>
		<span id="result1"></span>
	</form>
</fieldset>

<fieldset>
	<legend>Demo 2</legend>
	<form>
		Numero 1 <input type="text" id="numero1"><br>
		Numero 2 <input type="text" id="numero2"><br>
		Resultado <span id="result2"></span><br>
		<input type="button" value="Somar" id="buttonSomar">
		<br>
	</form>
</fieldset>

</body>
</html>