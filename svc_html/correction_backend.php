<html>
<body>
New world
<?php
require 'dataBase.php'; 

function updateSql($username, $oldPassword, $newPassword, $first_name, $last_name)
{
    if(validateUserCredentials($username, $oldPassword))
    {
        $dataBase = new Db();
        $userinfo = getUserInfo($username);
        $sql = "UPDATE users SET password = :password , first_name = :first_name , 
        last_name = :last_name  WHERE username = :username";
        $stmt = $dataBase->getConnection()->prepare($sql);
        // Use prepared statement to prevent SQL injection
        if(is_null($newPassword) || $newPassword === "")
        {
            $stmt->bindParam(':password', $userinfo["password"]);
            echo "True_newPassword: ".$userinfo["password"];
        } 
        else
        {
            $stmt->bindParam(':password', $newPassword);
            echo "False_newPassword: ".$userinfo["password"];
        }       

        if(is_null($first_name) || $first_name === "")
        {
            $stmt->bindParam(':first_name', $userinfo["first_name"]);
        }
        else
        {
            $stmt->bindParam(':first_name', $first_name);
        } 

        if(is_null($last_name) || $last_name === "")
        {
            $stmt->bindParam(':last_name', $userinfo["last_name"]);
        }
        else
        {
            $stmt->bindParam(':last_name', $last_name);
        }
            
        $stmt->bindParam(':username', $username);
        $stmt->execute();
        
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $oldPassword = $_POST["oldPassword"];
    $newPassword = $_POST["newPassword"];
    $first_name = $_POST["first_name"];
    $last_name = $_POST["last_name"];

    echo "entered_Password: ".$newPassword;

    updateSql($username, $oldPassword, $newPassword, $first_name, $last_name);

    header("Location: account.php");
}

?>

</html>
</body>