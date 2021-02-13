<?php 
session_start();
include('includes/config.php');
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
  <title>Alpha Rumors - Keep you away from Rumors</title>
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
     if (isset($_GET['pageno'])) {
            $pageno = $_GET['pageno'];
        } else {
            $pageno = 1;
        }
        $no_of_records_per_page = 8;
        $offset = ($pageno-1) * $no_of_records_per_page;


        $total_pages_sql = "SELECT COUNT(*) FROM tblposts";
        $result = mysqli_query($con,$total_pages_sql);
        $total_rows = mysqli_fetch_array($result)[0];
        $total_pages = ceil($total_rows / $no_of_records_per_page);


$query=mysqli_query($con,"select tblposts.id as pid,tblposts.PostTitle as posttitle,tblposts.PostImage,tblcategory.CategoryName as category,tblcategory.id as cid,tblsubcategory.Subcategory as subcategory,tblposts.PostDetails as postdetails,tblposts.PostingDate as postingdate,tblposts.PostUrl as url from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId where tblposts.Is_Active=1 order by tblposts.id desc  LIMIT $offset, $no_of_records_per_page");
while ($row=mysqli_fetch_array($query)) {
?>
          <div class="card mb-4"> <img class="card-img-top" src="admin/postimages/<?php echo htmlentities($row['PostImage']);?>" alt="<?php echo htmlentities($row['posttitle']);?>" width="400" height="400">
            <div class="card-body rounded-lg">
              <h3 style="font-family:'times roman';" class="text-dark"><b><?php echo htmlentities($row['posttitle']);?></b></h3>
              <h6 style="font-family:'times roman';"><b>Category : </b> <a href="category.php?catid=<?php echo htmlentities($row['cid'])?>"><?php echo htmlentities($row['category']);?></a> </h6>
              <a style="font-family:'times roman';" href="news-details.php?nid=<?php echo htmlentities($row['pid'])?>" class="btn btn-primary">Read More</a>
            </div>
            <div class="card-footer text-muted" style="font-family:'times roman';">
              Posted on <?php echo htmlentities($row['postingdate']);?>
            </div>
          </div>
          <?php } ?>
          <ul class="pagination m-3 pagination-sm d-flex justify-content-center" style="font-family:'times roman';">
            <li class="page-item active"> <a class="page-link" href="?pageno=1">First</a> </li>
            <li class="page-item <?php if($pageno <= 1){ echo 'disabled'; } else {echo 'active'; } ?>"> <a class="page-link" href="<?php if($pageno <= 1){ echo '#'; } else { echo "?pageno=".($pageno - 1); } ?>">Prev</a> </li>
            <li class="page-item <?php if($pageno >= $total_pages){ echo 'disabled'; } else {echo 'active'; } ?>"> <a class="page-link" href="<?php if($pageno >= $total_pages){ echo '#'; } else { echo "?pageno=".($pageno + 1); } ?>">Next</a> </li>
            <li class="page-item active"> <a class="page-link" href="?pageno=<?php echo $total_pages; ?>#">Last</a> </li>
          </ul>
        </div>

        <?php include('includes/sidebar.php');?>

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