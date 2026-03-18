<?php
include 'components/connect.php';

// Category from URL
if(isset($_GET['category'])){
   $category = $_GET['category'];
}else{
   $category = '';
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>courses</title>

   <!-- font awesome -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

   <!-- css -->
   <link rel="stylesheet" href="css/style.css">
</head>
<body>

<?php include 'components/user_header.php'; ?>

<section class="courses">

   <h1 class="heading">All Courses</h1>

   <div class="box-container">

      <?php
      // Category filter
      if($category != ''){
         $select_courses = $conn->prepare("SELECT * FROM `playlist` WHERE category = ? AND status = ? ORDER BY date DESC");
         $select_courses->execute([$category, 'active']);
      }else{
         $select_courses = $conn->prepare("SELECT * FROM `playlist` WHERE status = ? ORDER BY date DESC");
         $select_courses->execute(['active']);
      }

      if($select_courses->rowCount() > 0){
         while($fetch_course = $select_courses->fetch(PDO::FETCH_ASSOC)){
            $course_id = $fetch_course['id'];

            // tutor details
            $select_tutor = $conn->prepare("SELECT * FROM `tutors` WHERE id = ?");
            $select_tutor->execute([$fetch_course['tutor_id']]);
            $fetch_tutor = $select_tutor->fetch(PDO::FETCH_ASSOC);
      ?>
      
      <div class="box">
         <div class="tutor">
            <img src="uploaded_files/<?= $fetch_tutor['image']; ?>" alt="">
            <div>
               <h3><?= $fetch_tutor['name']; ?></h3>
               <span><?= $fetch_course['date']; ?></span>
            </div>
         </div>

         <img src="uploaded_files/<?= $fetch_course['thumb']; ?>" class="thumb" alt="">
         <h3 class="title"><?= $fetch_course['title']; ?></h3>

         <!-- View Playlist -->
         <a href="playlist.php?get_id=<?= $course_id; ?>" class="inline-btn">View Playlist</a>

         <!-- Take Quiz Button -->
         <a href="quiz.php?course=<?= urlencode($fetch_course['title']); ?>" class="inline-btn">Start Quiz</a>

      </div>

      <?php
         }
      }else{
         echo '<p class="empty">No courses found for this category!</p>';
      }
      ?>

   </div>

</section>

<?php include 'components/footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>