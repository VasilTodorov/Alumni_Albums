<html>
<body>
COCOCc
<?php
require 'dataBase.php'; 

// function validateUserCredentials($username, $password)
// {
//     $dataBase = new Db();
//     $sql = "SELECT * FROM reg_new WHERE username = :username AND password = :password";
//     // Use prepared statement to prevent SQL injection
//     $stmt = $dataBase->getConnection()->prepare($sql);
//     $stmt->bindParam(':username', $username);
//     $stmt->bindParam(':password', $password);
//     $stmt->execute();
//     // Execute the statement
//     $row = $stmt->fetch(PDO::FETCH_ASSOC);
//     $rowCount = $stmt->rowCount();
//     if($rowCount > 0) 
//     {
//         return true;
//     }
//     else
//     {
//         return false;
//     }
// }

session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validate user input
    $username = $_POST["username"];
    $password = $_POST["password"];
    //$hashedPassword = password_hash($password,PASSWORD_DEFAULT);
    // Perform authentication using a database
    
    $db = new DB();

    
    if (validateUserCredentials($username, $password)) {
        // Authentication successful
        $_SESSION["username"] = $username;
        header("Location: home-page.html");
        exit();
    } else {
        // Authentication failed
        //echo "Invalid username or password. Please try again.";
        header("Location: registration_page.html?error=invalid_data");
    }
}
?>
</body>
</html>

