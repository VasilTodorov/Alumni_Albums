<?php
session_start();

// Check if the user is logged in
if (!isset($_SESSION["username"])) {
    header("Location: registration_page.html");
    exit();
}

// Fetch and display additional user information from the database if needed
require 'dataBase.php'; 


// Assuming getUserInfo is a method in your DB class that retrieves user information
$userInfo = getUserInfo($_SESSION["username"]);

// Display user information using HTML
?>

<!DOCTYPE html>
<html lang="bg">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="Профил, в който всеки потребител може да промени данните си и да види някаква статистика за себе си" />

	<title>Профил страница</title>

	<link rel="stylesheet" type="text/css" href="style-account-page.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<script src="script.js"></script>
	

</head>
<body>
		<div class="gradient-bg">
		<div class="gradients-container">

			<div class="g1"></div>
			<div class="g2"></div>
			<div class="g3"></div>
			<div class="g4"></div>
			<div class="g5"></div>

			<div>
				<nav class="nav-bar">
					<div class="logo">
						<a href="home-page.html"><img src="logo.png" class="logo"></a>
					</div>

					<ul class="ul-nav-bar">
						<li class="li-nav-bar"><a href="concerts-page.html">Концерти</a></li>
						<li class="li-nav-bar"><a href="culture-page.html">Култура</a></li>
						<li class="li-nav-bar"><a href="sport-page.html">Спорт</a></li>
						<li class="li-nav-bar"><a href="it-meets-page.html">IT Срещи</a></li>
					</ul>

					<div class="account">
						<i class="fa-solid fa-right-from-bracket" onclick="showMessage()"></i>
						<a href="account.html"><img src="girl-account-profile.jpg" class="account"></a>
					</div>

				</nav>
			</div>

			<div class="account-header-wapper">
				<header></header>
				<div class="account-cols-container">
					<div class="account-left-col">
						<div class="account-img-container">
							<img src="girl-account-profile.jpg">
							<span></span>
						</div>

						<h3><?php echo $userInfo["first_name"]." ".$userInfo["last_name"] ; ?></h3>
						<h4><?php echo "Потребителско име: ".$userInfo["username"]; ?></h4>
						<p><?php echo "Специалност: ";
						switch($userInfo["major"]){
							case "kn":
								echo "Компютърни науки";
								break;
						
							case "i":
								echo "Информатика";
								break;
							case "is":
								echo "Информационни Системи";
								break;
							case "m":
								echo "Математика и информатика";
								break;
						
							case "stat":
								echo "Статистика";
								break;
						
							case "pm":
								echo "Приложна математика";
								break;
							case "si":
								echo "Софтуерно инженерство";
								break;
						
							default:
								echo "Невлидно";
						}
						echo "<br>"."Випуск: ".$userInfo["graduation"]." Поток: ".$userInfo["stream"] ; ?></p>

						<ul class="account-about">
							<li><span>983</span> Посетени</li>
							<li><span>23</span> Предстоят</li>
							<li><span>33</span> Организирани</li>
						</ul>

						<div class="account-content">
							<p>Аз съм студентка във ФМИ. Работя като ловец на дъги 🌈. Хобитата ми са: програмиране, решаване на задачи и графичен дизайн. Обичам да готвя, пътувам и събирам антични монети.</p>

							<ul>
								<li><a href="https://www.instagram.com/" target="_blank"><i class="fa-brands fa-instagram"></i></a></li>
								<li><a href="https://www.facebook.com/" target="_blank"><i class="fa-brands fa-facebook"></i></a></li>
								<li><a href="https://www.linkedin.com/" target="_blank"><i class="fa-brands fa-linkedin"></i></a></li>

							</ul>

							<button onclick="showMessageWrite()">Пиши съобщение тук</button>
						</div>
					</div>


					<div class="popup" id="messagePopup">
						<h2>
							До Ради:
						</h2>

					    <textarea id="messageTextarea" placeholder="Напишете съобщение"></textarea>
					    <button onclick="sendMessage()">Изпрати</button>
					    <button onclick="closePopup()">Затвори</button>
					</div>


					<div class="account-right-col">
						<nav>
							<ul>
								<li><a>Галерия</a></li>
								<li><a>Посетени</a></li>
								<li><a>Предстои</a></li>
								<li><a>Организирани</a></li>
							</ul>
							<button onclick="showEditPopup()">Редактирай</button>
						</nav>

					<div class="popup" id="editPopup">
						<form action="./correction_backend.php" method="post">
						<h2>Редактиране на лични данни</h2>
							<input type="text" id="username" name="username" placeholder="Потребителско име"><br>
							<input type="password" id="oldPassword" name="oldPassword" placeholder="Стара парола"><br>
							
							<input type="text" name="first_name" placeholder="Първо име"><br>
							<input type="text" name="last_name" placeholder="Фамилия"><br>
							
							<input type="password" id="newPassword" name="newPassword" placeholder="Нова парола"><br>
							<button onclick="saveChanges()" type="submit">Запази промените</button>
							<button onclick="closeEditPopup()">Затвори</button>					
						</form>
					    </div>

						<div class="account-photos">
							<img src="concert/concert-1.jpg" >
							<img src="concert/concert-2.jpg" >
							<img src="concert/concert-3.jpg" >
							<img src="concert/concert-4.jpg" >
							<img src="concert/concert-1.jpg" >
							<img src="concert/concert-2.jpg" >
						</div>


					</div>
				</div>
			</div>		
		
</div>
</div>



</body>
</html>