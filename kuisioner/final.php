<?php session_start(); ?>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8" />
	<title>Confide Simple Questionaire</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<body>
	<header>
		<div class="container">
			<h1>Confide Simple Questionaire</h1>
		</div>
	</header>
	<main>
		<div class="container">
			<h2>SELESAI!</h2>
				<p>Anda merupakan orang yang optimis, namun anda terkadang bersikap realistis</p>
				<p>index score (bukan nilai): <?php echo $_SESSION['score']; ?></p>
				<a href="question.php?n=1" class="start">Coba Lagi</a>
		</div>
	</main>
	<footer>
		<div class="container">
			Copyright &copy; 2020, Confide
		</div>
	</footer>
</body>
</html>
<?php session_destroy(); ?>