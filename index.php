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
    th{
        text-align:center;
        font-size:22px;
    }
    h1{
        text-align:center;
    }
    </style>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
        
    </nav>

    
        <div class="row" style="margin:-4% 3% 3% 0">
            <div class="col-md-12 col-sm-12">
                <h1>ScoreBoard xpression-14</h1>
                <table class="table table-bordered">
    <thead>
        <tr>
            <th rowspan="2">Events Name</th>
            <th colspan="14">Team Name</th>
        </tr>
        <tr>
            
<!--fetch team names from team_master-->
<?php
$team_name = "SELECT * from team_master";
$result = $con->query($team_name);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo  "<th>".$row['tname']."</th>";
    }
} else {
    echo "0 results";
}
?>
            
          
        </tr>
    </thead>
    <tbody>
        <tr>
  <?php
$event_name = "SELECT * from event_master WHERE event_id < 24";
$events = $con->query($event_name);

if ($events->num_rows > 0) {
    // output data of each row
    while($row = $events->fetch_assoc()) {
        echo  "<td>".$row['ename']."</td>\n";
    }
} else {
    echo "0 results";
}
?>
            <!--<td>Shubh Arambh</td>-->
        <?php
    for($i=0;$i<15;$i+=1){
                $sql_query = "Select marks from score where eventid = 1 && tid = ".$i."";
                $result =  mysqli_query($con,$sql_query);
                 while($row = mysqli_fetch_array($result)) {
        echo  "<td>".$row['marks']."hii</td>";
    }

            }
    ?>    
        </tr>
    </tbody>
    <tr>Total</tr>
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
