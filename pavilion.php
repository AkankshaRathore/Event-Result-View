<!-- Including files for DB connection and Session Control -->
<?php
   require 'connect.php';
?>

<!DOCTYPE html>
<html  lang="en">
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
                <h1>Pavilion-wise Score - Xpression2014</h1>
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
?> </tr>
    </thead>
    <tbody>
    <?php
     echo '<tr class="even"><th>Day 0</th>';
           for($i=1 ;$i<15;$i++){
            $total = 0;
            $sql_query = "SELECT * FROM event_master WHERE pavilion = 'Theme'";
                $result =  mysqli_query($con,$sql_query);
                 while($row = mysqli_fetch_array($result)) {
                 $sql = "Select * from score where eventid = ".$row['event_id']." and tid = ".$i;
                  $sql_result =  mysqli_query($con,$sql); 
                   while($row1 = mysqli_fetch_array($sql_result)){
                    $total += $row1['marks'];
                    //echo $row1['marks'];
                   } 
            }     
           echo '<td>'.$total.'</td>';
           }
          echo '</tr>';
          echo '<tr class="odd"><th>Marketing</th>';
           for($i=1 ;$i<15;$i++){
            $total = 0;
            $sql_query = "SELECT * FROM event_master WHERE pavilion = 'Marketing'";
                $result =  mysqli_query($con,$sql_query);
                 while($row = mysqli_fetch_array($result)) {
                 $sql = "Select * from score where eventid = ".$row['event_id']." and tid = ".$i;
                  $sql_result =  mysqli_query($con,$sql); 
                   while($row1 = mysqli_fetch_array($sql_result)){
                    $total += $row1['marks'];
                    //echo $row1['marks'];
                   } 
            }     
           echo '<td>'.$total.'</td>';
           }
          echo '</tr>';
          echo '<tr class="even"><th>Finance</th>';
           for($i=1 ;$i<15;$i++){
            $total = 0;
            $sql_query = "SELECT * FROM event_master WHERE pavilion = 'Finance'";
                $result =  mysqli_query($con,$sql_query);
                 while($row = mysqli_fetch_array($result)) {
                 $sql = "Select * from score where eventid = ".$row['event_id']." and tid = ".$i;
                  $sql_result =  mysqli_query($con,$sql); 
                   while($row1 = mysqli_fetch_array($sql_result)){
                    $total += $row1['marks'];
                    //echo $row1['marks'];
                   } 
            }     
           echo '<td>'.$total.'</td>';
           }
          echo '</tr>';
          echo '<tr class="odd"><th>Technical</th>';
           for($i=1 ;$i<15;$i++){
            $total = 0;
            $sql_query = "SELECT * FROM event_master WHERE pavilion = 'Technical'";
                $result =  mysqli_query($con,$sql_query);
                 while($row = mysqli_fetch_array($result)) {
                 $sql = "Select * from score where eventid = ".$row['event_id']." and tid = ".$i;
                  $sql_result =  mysqli_query($con,$sql); 
                   while($row1 = mysqli_fetch_array($sql_result)){
                    $total += $row1['marks'];
                    //echo $row1['marks'];
                   } 
            }     
           echo '<td>'.$total.'</td>';
           }
          echo '</tr>';
          echo '<tr class="even"><th>HR</th>';
           for($i=1 ;$i<15;$i++){
            $total = 0;
            $sql_query = "SELECT * FROM event_master WHERE pavilion = 'HR'";
                $result =  mysqli_query($con,$sql_query);
                 while($row = mysqli_fetch_array($result)) {
                 $sql = "Select * from score where eventid = ".$row['event_id']." and tid = ".$i;
                  $sql_result =  mysqli_query($con,$sql); 
                   while($row1 = mysqli_fetch_array($sql_result)){
                    $total += $row1['marks'];
                    //echo $row1['marks'];
                   } 
            }     
           echo '<td>'.$total.'</td>';
           }
          echo '</tr>';
          echo '<tr class="odd"><th>Informal</th>';
           for($i=1 ;$i<15;$i++){
            $total = 0;
            $sql_query = "SELECT * FROM event_master WHERE pavilion = 'Informal'";
                $result =  mysqli_query($con,$sql_query);
                 while($row = mysqli_fetch_array($result)) {
                 $sql = "Select * from score where eventid = ".$row['event_id']." and tid = ".$i;
                  $sql_result =  mysqli_query($con,$sql); 
                   while($row1 = mysqli_fetch_array($sql_result)){
                    $total += $row1['marks'];
                    //echo $row1['marks'];
                   } 
            }     
           echo '<td>'.$total.'</td>';
           }
          echo '</tr>';
       ?>

    </tbody>
                </table>
</body>
</html>