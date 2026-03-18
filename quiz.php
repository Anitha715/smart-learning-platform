<?php
include 'components/connect.php';

if(isset($_GET['course'])){
   $course = trim($_GET['course']);
}else{
   die("Course not selected");
}

/* 🔥 Case-insensitive match */
$select = $conn->prepare("SELECT * FROM quiz WHERE LOWER(course) = LOWER(?)");
$select->execute([$course]);

if($select->rowCount() == 0){
   die("No questions found for this course!");
}
?>

<!DOCTYPE html>
<html>
<head>
    <title><?= htmlspecialchars($course); ?> Quiz</title>
</head>
<body>

<h2><?= htmlspecialchars($course); ?> Quiz</h2>

<h3 id="timer">Time Left: 30</h3>

<form id="quizForm" action="result.php" method="post">

<?php
while($row = $select->fetch(PDO::FETCH_ASSOC)){
?>

<p><strong><?= $row['question']; ?></strong></p>

<label>
<input type="radio" name="answer[<?= $row['id']; ?>]" value="<?= $row['option1']; ?>">
<?= $row['option1']; ?>
</label><br>

<label>
<input type="radio" name="answer[<?= $row['id']; ?>]" value="<?= $row['option2']; ?>">
<?= $row['option2']; ?>
</label><br>

<label>
<input type="radio" name="answer[<?= $row['id']; ?>]" value="<?= $row['option3']; ?>">
<?= $row['option3']; ?>
</label><br>

<label>
<input type="radio" name="answer[<?= $row['id']; ?>]" value="<?= $row['option4']; ?>">
<?= $row['option4']; ?>
</label><br><br>

<?php
}
?>

<input type="hidden" name="course" value="<?= htmlspecialchars($course); ?>">
<input type="submit" value="Submit Quiz">

</form>

<script>
let timeLeft = 30;
let timerDisplay = document.getElementById("timer");

let timer = setInterval(function() {
    timeLeft--;
    timerDisplay.innerHTML = "Time Left: " + timeLeft;

    if(timeLeft <= 0){
        clearInterval(timer);
        alert("Time Up!");
        document.getElementById("quizForm").submit();
    }
}, 1000);
</script>

</body>
</html>