<?php
session_start();
require 'includeFiles/header.php';
?>
<!DOCTYPE html>
<html>
<head>
    <title>Citizen job status information status</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="js/bootstrap.min.js">
        <link rel="stylesheet" type="text/css" href="icons/all.min.css">
    </head>
    <body>
<?php
require 'includeFiles/config.php';
$sql = 'SELECT * FROM citizen';
$statement = $connection->prepare($sql);
$statement->execute();
$people = $statement->fetchAll(PDO::FETCH_OBJ);
 ?>
<div class="container"><br>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto">
            <li class="nav-item">
                <a class="nav-link" href="collectorIndex.php" style="font-weight:bold;padding:8px;"><b style="color:darkblue">CITIZENS JOB STATUS INFORMATION PORTAL <i class="fas fa-home"></i></b></a>
            </li>
        </ul>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      </ul>
    </div>
    </div>
</nav>
  <div class="card mt-5">
    <div class="card-header">
      <h2>All citizens in our database</h2>
    </div>
    <div class="card-body">
      <table class="table table-bordered">
        <tr>
        <th>Citizen Identification Number</th>
        <th>Citizen fullName</th>
        <th>Address</th>
        <th>Age</th>
        <th>Gender</th>
        <th>Job status</th>
        <th>Company</th>
        <th>Salary</th>
        <th>Collector action</th>    
        </tr>
        <?php foreach($people as $person): ?>
          <tr>
            <td><?= $person->cid; ?></td>
            <td><?= $person->fullname; ?></td>
            <td><?= $person->address; ?></td>
            <td><?= $person->age; ?></td>
            <td><?= $person->sex; ?></td>
            <td><?= $person->status; ?></td>
            <td><?= $person->company; ?></td>
            <td><?= $person->salary; ?></td>
            <td>&nbsp;&nbsp;&nbsp;
              <a onclick="return confirm('Are you sure you want to update this record ?')" href="edit.php?id=<?= $person->id ?>" class='btn btn-primary'><i class="fas fa-edit"></i></a>          
                <a onclick="return confirm('Are you sure you want to delete this CItizen record?')" href="delete.php?id=<?= $person->id ?>" class='btn btn-danger'><i class="fa fa-trash" aria-hidden="true"></i></a> 
            </td>
          </tr>
        <?php endforeach; ?>
      </table>
        <?php 
        
        $message='';
        //creating way of countig recoeds in table
        $caountSl="SELECT COUNT(*) AS num FROM citizen";
        //prepare for the count sql statement
        $stmt=$connection->prepare($caountSl);
        //execute the count statement
        $stmt->execute();
        //Fetch the row that MySQL querry returned
        $rows=$stmt->fetch(PDO::FETCH_ASSOC);
        //the rows array will contain  "num" to print out
        $message='<b>'.'TOTAL CITIZENS : We have ' .$rows['num']. " citizens exist in our database.".'</b>';
        echo "<div class='alert alert-success'>" .$message. "</div>";
        
?>
    </div>
  </div>
</div>
    </body>
</html>