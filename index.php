<!-- Including files for DB connection and Session Control -->
<?php
   require 'connect.php';
?>
<!-- /End of includes -->
<!DOCTYPE html>
<html class="full" lang="en">
<!-- Make sure the <html> tag is set to the .full CSS class. Change the background image in the full.css file. -->

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="refresh" content="5">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Xpression-2014</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/the-big-picture.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    
    <style>
    th,td{
		font-size:11.5px;
    }
    </style>

      <div class="row" style="margin:-5% 3% 1.8% 0">
            <div class="col-md-6 col-sm-12">
                <h3>xpression2014</h3>
                <table class="table table-bordered">
    <thead>
        <tr>
            <th></th>
            <?php
$sql = "SELECT * from event_master where event_id<23";
$result = $con->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo  "<th>".$row['ename']."</th>";
    }
	echo '<th>Total</th>';
} else {
    echo "0 results";
}
?>
            
          
        </tr>
    </thead>
    <tbody>
        
            <?php
    for($i=0;$i<15;$i+=1){echo '<tr>';
                $sql_query = "Select * from team_master where tid = ".$i."";
                $result =  mysqli_query($con,$sql_query);
                 while($row = mysqli_fetch_array($result)) { 
				     $team_name = $row['tname'];
					 $tid = $row['tid'];
					 echo "<th>".$team_name."</th>";
					 $total = 0;
					 for($j=1;$j<23;$j+=1){
                $sql_query = "Select marks from score where eventid = ".$j." && tid = ".$tid."";
                $result =  mysqli_query($con,$sql_query);
                 while($row = mysqli_fetch_array($result)) {
        echo  "<td>".$row['marks']."</td>";
		$total += $row['marks'];
    }
	
            }echo '<td>'.$total.'</td>';
				 }
	echo '</tr>';}?>    
        
    </tbody>
</table>
            </div>
        </div>
        <!-- /.row -->
    
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
