<?php
 session_start();
include('includes/config.php');
if(isset($_POST['login']))
  {
      $uname=$_POST['username'];
    $password=$_POST['password'];
$sql =mysqli_query($con,"SELECT AdminUserName,AdminEmailId,AdminPassword FROM tbladmin WHERE (AdminUserName='$uname' || AdminEmailId='$uname')");
 $num=mysqli_fetch_array($sql);
if($num>0)
{
$hashpassword=$num['AdminPassword']; 
if (password_verify($password, $hashpassword)) {
$_SESSION['login']=$_POST['username'];
    echo "<script type='text/javascript'> document.location = 'admin/dashboard.php'; </script>";
  } else {
echo "<script>alert('Wrong Password');</script>";
 
  }
}
else{
echo "<script>alert('User not registered with us');</script>";
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
  <title>Alpha Rumors | Login</title>
  <meta name="description" content="Alpha Rumors - Keep you away from Rumors and update you with informational knowledge.">
  <meta name="keywords" content="alpha, rumors, alpha rumors, alpha-rumors, alpha rumors news, political news, sports news, tech news, bollywood news, business news, entertainment news, news paper, digital news, latest news">
</head>

<body class="">
<?php include('includes/header.php');?>

<div class="py-5 mt-5 bg-dark" style="background-image: url(&quot;assets/img/bg11.jpg&quot;); background-size: cover; background-position: center top;" >
    <div class="container">
      <div class="row my-4">
        <div class="mx-auto col-md-6 col-10 col-xl-4 px-4">
          <div class="card bg-primary">
            <div class="card-body text-center">
              <div class="row mt-5">
                <div class="col-md-12">
                <h5 class="mb-0" style="font-family:'times roman';">
                    <u><b>Alpha Rumors</b></u>
                  </h5>
                  <h5 class="mb-4" style="font-family:'times roman';">
                    <b>Login</b>
                  </h5>
                </div>
              </div>
              <div class="row mt-4 pt-2">
                <div class="col">
                  <form method="post">
                    <div class="form-group mb-2">
                      <div class="input-group border-0">
                        <div class="input-group-prepend">
                          <span class="input-group-text" id="basic-addon1">
                            <i class="now-ui-icons users_circle-08 lg"></i>
                          </span>
                        </div>
                        <input type="email" class="form-control" id="inlineFormInputGroup" placeholder="Email..." name="username" autocomplete="off" required>
                      </div>
                    </div>
                    <div class="form-group mb-2">
                      <div class="input-group border-0">
                        <div class="input-group-prepend ">
                          <span class="input-group-text" id="basic-addon1">
                            <i class="now-ui-icons text_caps-small lg"></i>
                          </span>
                        </div>
                        <input type="password" class="form-control" id="inlineFormInputGroup" placeholder="Password..." name="password" autocomplete="off" required>
                      </div>
                    </div>
                    <button name="login" type="submit" class="btn mt-4 mb-3 btn-light rounded btn-lg text-primary">Login</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>

    <?php include('includes/footer-login.php');?>

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