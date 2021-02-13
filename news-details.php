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
  <title>Alpha Rumors | News Details</title>
  <meta name="description" content="Alpha Rumors - Keep you away from Rumors and update you with informational knowledge.">
  <meta name="keywords" content="alpha, rumors, alpha rumors, alpha-rumors, alpha rumors news, political news, sports news, tech news, bollywood news, business news, entertainment news, news paper, digital news, latest news">
</head>

<body class="">

<?php include('includes/header.php');?>

  <div class="py-2 mt-5">
    <div class="container">
      <div class="row">
        <div class="col-md-8 mt-5" style="">

        <?php
$pid=intval($_GET['nid']);
 $query=mysqli_query($con,"select tblposts.PostTitle as posttitle,tblposts.PostImage,tblcategory.CategoryName as category,tblcategory.id as cid,tblsubcategory.Subcategory as subcategory,tblposts.PostDetails as postdetails,tblposts.PostingDate as postingdate,tblposts.PostUrl as url from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId where tblposts.id='$pid'");
while ($row=mysqli_fetch_array($query)) {
?>

          <div class="card">
            <div class="card-body mb-4">
              <h3 class="card-title text-dark" style="font-family:'times roman';"><b><?php echo htmlentities($row['posttitle']);?></b></h3>
              <h6 class="card-subtitle my-2" style="font-family:'times roman';"><b>Category: </b> <a href="category.php?catid=<?php echo htmlentities($row['cid'])?>"><?php echo htmlentities($row['category']);?></a> |
              <b>Sub-Category: </b><?php echo htmlentities($row['subcategory']);?> <b>| Posted on </b><?php echo htmlentities($row['postingdate']);?></h6>
              <hr>
              <img style="font-family:'times roman';" class="card-img-top" src="admin/postimages/<?php echo htmlentities($row['PostImage']);?>" alt="<?php echo htmlentities($row['posttitle']);?>">
              <hr>
              <p style="font-family:'times roman';" class="card-text"><?php $pt=$row['postdetails'];echo  (substr($pt,0));?></p>
            </div>
          </div>
          <?php } ?>
        </div>

        <?php include('includes/sidebar.php');?>

      </div>
</div>
</div>
<div class="py-2">
    <div class="container">
      <div class="row mt-4">
        <div class="col-md-6" >
          <div class="card">
            <div class="card-header"> Leave a Comment:</div>
            <div class="card-body">
              <form id="c_form-h" name="comment" method="post">
              <input type="hidden" name="csrftoken" value="<?php echo htmlentities($_SESSION['token']); ?>" />
                <div class="form-group row">
                  <div class="col-10">
                    <input type="name" name="name" class="form-control" id="inputpasswordh" placeholder="Enter Your Name..."> </div>
                </div>
                <div class="form-group row">
                  <div class="col-10" style="">
                    <input type="email" name="email" class="form-control" id="inputmailh" placeholder="Enter Your Email..."> </div>
                </div>
                <div class="form-group row">
                  <div class="col-10">
                    <textarea name="comment" class="form-control" id="inputpasswordh" placeholder="Comment..."></textarea></div>
                </div>
                <button type="submit" class="btn btn-primary d-flex" name="submit">Submit</button>
              </form>
            </div>
          </div>
        </div>
      <div class="mb-4 col-md-6">
          <div class="card">
            <div class="card-header" > Comments:</div>
            <div class="card-body p-4">

<?php 
 $sts=1;
 $query=mysqli_query($con,"select name,comment,postingDate from  tblcomments where postId='$pid' and status='$sts'");
while ($row=mysqli_fetch_array($query)) {
?>

              <div class="row">
                <div class="col-3 col-md-2"> <img class="img-fluid d-block rounded-circle" src="images/usericon.png"> </div>
                <div class="d-flex  col-md-8 flex-column justify-content-center align-items-start col-9">
                  <p class="mb-0 lead text-dark"> <b><?php echo htmlentities($row['name']);?> </b> </p>
                  <p class="mb-0"><?php echo htmlentities($row['postingDate']);?></p>
                </div>
              </div>
              <p class="mt-3 mb-3"><?php echo htmlentities($row['comment']);?></p>
              <?php } ?>
            </div>
          </div>
        </div>
      </div>
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