<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<!-- JQuery JavaScript -->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>	
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="resources/css/style.css">

</head>
<body>


	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="box">

<!-- Input -->
					<div class="form-group">
						<label for="pokemonNumberLabel">Enter Pokemon</label> <input
							type="text" class="form-control" id="pokemonId"
							placeholder="Number or Name">
					</div>

					<div class="input-group">
						<span class="input-group-addon addon-twitter"> <i
							class="fa fa-fw fa-2x fa-twitter fa-fw"></i>
						</span>
						<button id="goButton" class="btn btn-lg btn-block btn-twitter">
							GO!</button>
						<span class="input-group-addon addon-twitter"> <i
							class="fa fa-fw fa-2x fa-fw"></i>
						</span>
					</div>

<!-- Picture -->

					<div class="row">
						<img id="pokemonImage" class="img-responsive center-block"></img>
					</div>

<!-- Combo Box -->
					
					<select id = "levelOptions" class = "btn btn-lg btn-block btn-twitter center-block">
					</select>
					
<!-- Bottom Buttons -->
					<div class="input-group">
						<span class="input-group-addon addon-twitter"> <i
							class="fa fa-fw fa-2x fa-fw"></i>
						</span>
						<button id="evolveButton" class="btn btn-lg btn-block btn-twitter">
							Evolve!</button>
						<span class="input-group-addon addon-twitter"> <i
							class="fa fa-fw fa-2x fa-fw"></i>
						</span>
						<button id="returnButton" class="btn btn-lg btn-block btn-twitter">
							Return!</button>
						<span class="input-group-addon addon-twitter"> <i
							class="fa fa-fw fa-2x fa-fw"></i>
						</span>
					</div>
					
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="resources/js/jsPokemon.js"></script>
	
</body>
</html>