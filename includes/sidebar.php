<div class="col-md-4 py-5" style="font-family:'times roman';">
          <div class="card bg-light mb-3">
            <div class="card-header"><b>Search</b></div>
            <div class="d-flex justify-content-center" >
            <form class="form-inline m-4" action="search.php" method="post">
              <div class="input-group">
                <input type="text" name="searchtitle" class="form-control form-control" id="inlineFormInputGroup" placeholder="Search for..." required>
                <button type="submit" class="btn btn-primary">Search</button>
                </div>
              </form>
          </div>
        </div>
          <div class="card bg-light mb-3" style="font-family:'times roman';">
            <div class="card-header"><b>Categories</b></div>
            <?php $query=mysqli_query($con,"select id,CategoryName from tblcategory");
while($row=mysqli_fetch_array($query))
{
?>
            <li class="list-group-item"><i class="fa fa-angle-double-right text-primary mr-2 fa-lg"></i><b><a href="category.php?catid=<?php echo htmlentities($row['id'])?>"><?php echo htmlentities($row['CategoryName']);?></a></b></li>
            <?php } ?>
          </div>
          <div class="card bg-light mb-3">
            <div class="card-header" style="font-family:'times roman';"><b>Recent Post</b></div>
            <?php
$query=mysqli_query($con,"select tblposts.id as pid,tblposts.PostTitle as posttitle from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId limit 8");
while ($row=mysqli_fetch_array($query)) {
?>
            <li class="list-group-item"><i class="fa fa-angle-double-right text-primary mr-2 fa-lg"></i><b><a href="news-details.php?nid=<?php echo htmlentities($row['pid'])?>"><?php echo htmlentities($row['posttitle']);?></a></b></li>
            <?php } ?>
          </div>
        </div>
      </div>
    </div>
  </div>
