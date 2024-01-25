<?php 
class Db
{
    private $connection;

    public function __construct()
    {
        $dbhost = "localhost";
        $dbName = "web_project";
        $userName = "root";
        $userPassword = "";
        
        $this->connection = new PDO('mysql:host='.$dbhost.';dbname='.$dbName, $userName, $userPassword, [
            PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        ]);
    }

    public function getConnection()
    {
        return $this->connection;
    }
}

function getUserInfo($username)
{
    $dataBase = new Db();
    $sql = "SELECT * FROM users WHERE username = :username";
    
    // Use prepared statement to prevent SQL injection
    $stmt = $dataBase->getConnection()->prepare($sql);
    $stmt->bindParam(':username', $username);
    $stmt->execute();

    // Fetch user information
    $userInfo = $stmt->fetch(PDO::FETCH_ASSOC);

    return $userInfo;
}

function validateUserCredentials($username, $password)
{
    $dataBase = new Db();
    $sql = "SELECT * FROM users WHERE username = :username AND password = :password";
    // Use prepared statement to prevent SQL injection
    $stmt = $dataBase->getConnection()->prepare($sql);
    $stmt->bindParam(':username', $username);
    $stmt->bindParam(':password', $password);
    $stmt->execute();
    // Execute the statement
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
    $rowCount = $stmt->rowCount();
    if($rowCount > 0) 
    {
        return true;
    }
    else
    {
        return false;
    }
}

function insert($first_name, $last_name, $email, $username,
 $graduation, $stream, $faculty_number, $major, $password)
{
    $dataBase = new Db();
    $sql = "INSERT INTO users (first_name, last_name, email, username,
     graduation, stream, faculty_number, major, password) 
    VALUES (:first_name, :last_name, :email, :username, :graduation,
    :stream, :faculty_number, :major, :password)";
    
    // Use prepared statement to prevent SQL injection
    $stmt = $dataBase->getConnection()->prepare($sql);
    $stmt->bindParam(':first_name', $first_name);
    $stmt->bindParam(':last_name', $last_name);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':username', $username);
    $stmt->bindParam(':graduation', $graduation);
    $stmt->bindParam(':stream', $stream);
    $stmt->bindParam(':faculty_number', $faculty_number);
    $stmt->bindParam(':major', $major);
    $stmt->bindParam(':password', $password);
    // Execute the statement
    $stmt->execute();
}
?>
