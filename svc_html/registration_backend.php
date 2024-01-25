<html>
<body>
    Hello
<?php
require 'dataBase.php'; 

// function insert($first_name, $last_name, $email, $username,
//  $graduation, $stream, $faculty_number, $major, $password)
// {
//     $dataBase = new Db();
//     $sql = "INSERT INTO users (first_name, last_name, email, username,
//      graduation, stream, faculty_number, major, password) 
//     VALUES (:first_name, :last_name, :email, :username, :graduation,
//     :stream, :faculty_number, :major, :password)";
    
//     // Use prepared statement to prevent SQL injection
//     $stmt = $dataBase->getConnection()->prepare($sql);
//     $stmt->bindParam(':first_name', $first_name);
//     $stmt->bindParam(':last_name', $last_name);
//     $stmt->bindParam(':email', $email);
//     $stmt->bindParam(':username', $username);
//     $stmt->bindParam(':graduation', $graduation);
//     $stmt->bindParam(':stream', $stream);
//     $stmt->bindParam(':faculty_number', $faculty_number);
//     $stmt->bindParam(':major', $major);
//     $stmt->bindParam(':password', $password);
//     // Execute the statement
//     $stmt->execute();
// }

if ($_SERVER["REQUEST_METHOD"] == "POST")
{
    $dataBase = new Db();
    $username = $_POST['username'];
    $faculty_number = $_POST['faculty_number'];
    //$password = $_POST["password"];

    $sql = "SELECT * FROM users WHERE username = '$username'";
    $stmt = $dataBase->getConnection()->prepare($sql);
    //$stmt->bindParam(':username', $username);
    $stmt->execute();

    $sql1 = "SELECT * FROM users WHERE faculty_number = '$faculty_number'";
    $stmt1 = $dataBase->getConnection()->prepare($sql1);
    //$stmt->bindParam(':username', $username);
    $stmt1->execute();

    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    $row1 = $stmt1->fetch(PDO::FETCH_ASSOC);
    if($row['username'] || $row1['faculty_number']) {        
        header("Location: registration_page.html?error=username_taken");//?error=username_taken
        exit();
    }
    else
    {
        //$hashedPassword = password_hash($_POST['password'],PASSWORD_DEFAULT);
        insert($_POST['first_name'], $_POST['last_name'], $_POST['email'], 
        $_POST['username'], $_POST['graduation'],
        $_POST['stream'], $_POST['faculty_number'], $_POST['major'], 
        $_POST['password']);//$_POST['password']
    
        //header("Location: public_html/home-page.html");
        //header("Location: login_backend.php");

        session_start();

        $_SESSION["username"] = $username;
        header("Location: home-page.html");
        exit();
        
    }

   
}
?>
</body>
</html>