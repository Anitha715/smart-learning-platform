<?php
session_start();

include 'components/connect.php';

$score = 0;
$total = count($_POST['answer']);

foreach($_POST['answer'] as $id => $user_answer){
   $check = $conn->prepare("SELECT answer FROM quiz WHERE id = ?");
   $check->execute([$id]);
   $correct = $check->fetch(PDO::FETCH_ASSOC);

   if($user_answer == $correct['answer']){
      $score++;
   }
}

$percentage = ($score / $total) * 100;
$pass_mark = 50;

$name = isset($_SESSION['name']) ? $_SESSION['name'] : "ANITHA L";
$course = isset($_POST['course']) ? $_POST['course'] : "Course";
?>

<!DOCTYPE html>
<html>
<head>

<title>Quiz Result</title>

<style>

body{
background:#f5f5f5;
}

#certificate{
width:900px;
margin:auto;
padding:50px;
text-align:center;
background:linear-gradient(#fffdf5,#f7e7b6);
border:10px solid #c9a646;
position:relative;
font-family:"Times New Roman", serif;
box-shadow:0 0 30px rgba(0,0,0,0.2);
}

/* inner border */

#certificate::before{
content:"";
position:absolute;
top:15px;
left:15px;
right:15px;
bottom:15px;
border:4px solid #d4af37;
pointer-events:none;
}

/* corner design */

.corner{
width:80px;
height:80px;
position:absolute;
border-color:#c9a646;
}

.top-left{
top:0;
left:0;
border-top:6px solid;
border-left:6px solid;
}

.top-right{
top:0;
right:0;
border-top:6px solid;
border-right:6px solid;
}

.bottom-left{
bottom:0;
left:0;
border-bottom:6px solid;
border-left:6px solid;
}

.bottom-right{
bottom:0;
right:0;
border-bottom:6px solid;
border-right:6px solid;
}

/* title */

.cert-title{
font-size:42px;
color:#d2691e;
font-weight:bold;
margin-top:20px;
font-style:italic;
}

/* certificate text */

.cert-text{
font-size:20px;
line-height:1.8;
color:#333;
margin-top:20px;
}

.logo{
display:block;
margin:auto;
margin-bottom:15px;
}

</style>

</head>

<body>

<h2>Your Score: <?php echo $score; ?> / <?php echo $total; ?></h2>
<h3>Percentage: <?php echo round($percentage); ?>%</h3>

<?php if($percentage >= $pass_mark){ ?>

<h2 style="color:green;">Result: PASS</h2>

<div id="certificate">

<!-- corner design -->

<div class="corner top-left"></div>
<div class="corner top-right"></div>
<div class="corner bottom-left"></div>
<div class="corner bottom-right"></div>

<!-- Logo -->

<img src="images/logo.png" width="100" style="margin-top:-20px;"><br><br>

<!-- College Header -->

<div style="margin-bottom:20px;">

<h2 style="margin:0;font-weight:bold;">
VIVEKANANDHA <br>
COLLEGE OF ARTS AND SCIENCES FOR WOMEN
</h2>

<p style="font-size:14px;margin-top:5px;">
Autonomous | An ISO 9001 : 2015 | NAAC 'A+' | 2(f) & 12(B) | Periyar University
</p>

<p style="font-size:14px;">
Tiruchengode - 637 205, Namakkal (Dt)., Tamil Nadu
</p>

</div>

<h1 class="cert-title">Certificate of Completion</h1>

<p class="cert-text">

This to Certify that Ms. <b><?php echo $name; ?></b> 
of <b>MASTER OF COMPUTER APPLICATION</b> from
<b>VIVEKANANDHA COLLEGE OF ARTS AND SCIENCES FOR WOMEN (Autonomous)</b> 
by Department of <b>COMPUTER SCIENCE AND APPLICATIONS</b> 
for the academic year <b>2025 - 2026</b> 
has successfully completed the 
<b><?php echo strtoupper($course); ?> COURSE</b> 
with a score of

</p>

<h2><?php echo round($percentage); ?>%</h2>

<h2 style="color:#1e90ff;margin-bottom:-20px;"><i>Congratulations!</i> 🎉</h2>

</div>

<br>

<button onclick="downloadCertificate()" 
style="padding:10px 20px;background:#1e90ff;color:white;border:none;cursor:pointer;">
Download Certificate
</button>

<?php } else { ?>

<h2 style="color:red;">Result: FAIL</h2>

<?php } ?>

<script>

function downloadCertificate() {

var content = document.getElementById("certificate").outerHTML;

var a = document.createElement("a");

var file = new Blob(["<html><body>" + content + "</body></html>"], {type: 'text/html'});

a.href = URL.createObjectURL(file);

a.download = "Certificate.html";

a.click();

}

</script>

</body>
</html>