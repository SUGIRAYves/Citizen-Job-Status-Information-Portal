<?php
//this file is going to allow us in cretaion od delete records in database
require 'includeFiles/config.php';
$id = $_GET['id'];
$sql = 'DELETE FROM citizen WHERE id=:id';
$statement = $connection->prepare($sql);
if ($statement->execute([':id' => $id])) {
  header("Location: collectorIndex.php");
}
