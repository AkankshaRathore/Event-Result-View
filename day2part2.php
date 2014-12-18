<?php
$redirect = 'day2part1.php';
?>
<SCRIPT LANGUAGE="JavaScript">
redirTime = "5000";
redirURL = "<?php echo $redirect ?>";
function redirTimer() { self.setTimeout("self.location.href = redirURL;",redirTime); }
</script>
<BODY onLoad="redirTimer()">


<!-- Including files for DB connection and Session Control -->
<?php
   require 'connect.php';
?>
<!-- /End of includes -->
<!DOCTYPE html>
<html  lang="en">
<!-- Make sure the <html> tag is set to the .full CSS class. Change the background image in the full.css file. -->

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <!-- <meta http-equiv="refresh" content="5">-->
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
    .even{
        background-color: grey;
    }
    .odd{
        background-color: #fff;
    }
    
    th,tr,td{
		font-size:13px;
       
    }
	body{
		color:#000}
        h3{
            text-align: center;
        }
    </style>

      <div class="row" style="text-align:center;margin:-5% 0 1.8% 7%">
            <div class="col-md-6 col-sm-12">
                <h1>Score Board - Xpression2014</h1>
                <table class="table table-bordered">
    <thead>
        <tr>
            <th></th>
            <?php
$sql = "SELECT * from team_master ";
$result = $con->query($sql);

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
        
            <?php

            
    for($i=37;$i<50;$i+=1){
        if($i%2==0){
        echo '<tr class="even" >';}
        else{
          echo '<tr class="odd" >';  
        }
                $sql_query = "Select * from event_master where event_id = ".$i."";
                $result =  mysqli_query($con,$sql_query);
                 while($row = mysqli_fetch_array($result)) { 
				     $event_name = $row['ename'];
					 $eid = $row['event_id'];
					 echo "<th>".$event_name."</th>";
					 
					 for($j=1;$j<15;$j+=1){
                $sql_query = "Select marks from score where tid = ".$j." && eventid = ".$eid."";
                $result =  mysqli_query($con,$sql_query);
                 while($row = mysqli_fetch_array($result)) {
        echo  "<td>".$row['marks']."</td>";
		    }
	}
				 }
	echo '</tr>';}?>    
   <tr class="even">
   <th>
       Total
   </th>
   <?php
    $ttl_arr = [];
        for($i = 1;$i<15;$i++){
            $tot = 0;
            for($j=1;$j<51;$j++){
                $sql_query = "Select marks from score where tid = ".$i." && eventid = ".$j."";
                $result =  mysqli_query($con,$sql_query);
                 while($row = mysqli_fetch_array($result)) {
         $tot+= $row['marks'];
            }
            }
        array_push($ttl_arr,$tot);
        }
         foreach($ttl_arr as $total){
            echo '<td>'.$total.'</td>';
         }
   ?>
   </tr>  
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
