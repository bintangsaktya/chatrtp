<?php include 'database.php'; ?>
<?php
/*
 *	Get Total Questions
 */
 $query ="SELECT * FROM questions";
 //Get results
 $results = $mysqli->query($query) or die($mysqli->error.__LINE__);
 $total = $results->num_rows;
?>
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
			<h2>Cek kondisi emosionalmu sob!</h2>
			<p>Pilihan Ganda : Pilihlah Jawaban Yang Sesuai dengan kondisi anda</p>
			<ul>
				<li><strong>Jumlah Pertanyaan: </strong><?php echo $total; ?></li>
				<li><strong>Tipe Soal: </strong>Pilihan Ganda</li>
				<li><strong>Waktu: </strong><?php echo $total * .5; ?> Menit</li>
			</ul>
			<a href="question.php?n=1" class="start">Mulai</a>
		</div>
	</main>
	<footer>
		<div class="container">
			Copyright &copy; 2020, Confide
		</div>
	</footer>
</body>
</html>