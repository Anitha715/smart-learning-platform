<?php
session_start(); // 🔹 session start must be first

include 'components/connect.php';

if(isset($_COOKIE['user_id'])){
   $user_id = $_COOKIE['user_id'];
}else{
   $user_id = '';
}

if(isset($_POST['submit'])){

   $email = $_POST['email'];
   $email = filter_var($email, FILTER_SANITIZE_STRING);
   $pass = sha1($_POST['pass']);
   $pass = filter_var($pass, FILTER_SANITIZE_STRING);

   $select_user = $conn->prepare("SELECT * FROM `users` WHERE email = ? AND password = ? LIMIT 1");
   $select_user->execute([$email, $pass]);
   $row = $select_user->fetch(PDO::FETCH_ASSOC);
   
   if($select_user->rowCount() > 0){

      // 🔹 Save user name in session
      $_SESSION['name'] = $row['name'];

      setcookie('user_id', $row['id'], time() + 60*60*24*30, '/');
      header('location:home.php');
      exit();

   }else{
      $message[] = 'incorrect email or password!';
   }

}
?>