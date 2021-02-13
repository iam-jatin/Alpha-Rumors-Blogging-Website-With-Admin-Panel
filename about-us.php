<?php 
session_start();
include('includes/config.php');

if (empty($_SESSION['token'])) {
  $_SESSION['token'] = bin2hex(random_bytes(32));
 }
 
 if(isset($_POST['submit']))
 {

  if (!empty($_POST['csrftoken'])) {
     if (hash_equals($_SESSION['token'], $_POST['csrftoken'])) {
 $name=$_POST['name'];
 $email=$_POST['email'];
 $comment=$_POST['comment'];
 $postid=intval($_GET['nid']);
 $st1='0';
 $query=mysqli_query($con,"insert into tblcomments(postId,name,email,comment,status) values('$postid','$name','$email','$comment','$st1')");
 if($query):
   echo "<script>alert('comment successfully submit. Comment will be display after admin review ');</script>";
   unset($_SESSION['token']);
 else :
  echo "<script>alert('Something went wrong. Please try again.');</script>";  
 
 endif;
 
 }
 }
 }
?>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <link rel="shortcut icon" href="images/favicon.png">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.standalone.min.css">
  <link rel="stylesheet" href="assets/css/now-ui-kit.css" type="text/css">
  <link rel="stylesheet" href="assets/css/nucleo-icons.css" type="text/css">
  <link rel="icon" href="">
  <title>Alpha Rumors | About Us</title>
  <meta name="description" content="Alpha Rumors - Keep you away from Rumors and update you with informational knowledge.">
  <meta name="keywords" content="alpha, rumors, alpha rumors, alpha-rumors, alpha rumors news, political news, sports news, tech news, bollywood news, business news, entertainment news, news paper, digital news, latest news">
</head>

<body class="">

<?php include('includes/header.php');?>

  <div class="mt-5 pt-5" >
    <div class="container">
    <?php 
$pagetype='aboutus';
$query=mysqli_query($con,"select PageTitle,Description from tblpages where PageName='$pagetype'");
while($row=mysqli_fetch_array($query))
{

?>
      <div class="row d-flex justify-content-center">
        <h2 style="font-family:'times roman'"><?php echo htmlentities($row['PageTitle'])?></h2>
      </div>
      <div class="row">
        <div class="col-md-12">
          <ul class="breadcrumb" style="font-family:'times roman'">
            <li class="breadcrumb-item"> <a href="index.php">Home</a> </li>
            <li class="breadcrumb-item active">About</li>
          </ul>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12" style="font-family:'times roman'">
          <p><?php echo $row['Description'];?></p>
        </div>
      </div>
<?php } ?>
    </div>
  </div>

  <?php include('includes/footer.php');?>

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script src="assets/js/parallax.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.js"></script>

  <script>
    $(document).ready(function() {
      $('[data-toggle="popover"]').popover();
      $('[data-toggle="tooltip"]').tooltip();
      $('#datepicker-example').datepicker({
        calendarWeeks: true,
        autoclose: true,
        todayHighlight: true
      });
    });
  </script>

</body>
</html>