<?php
include("connect.php");//just like an import statement

$query = "SELECT * FROM tbl_myfavethings";

$runQuery = $pdo->query($query);

$result = array();

while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)){
    $result[] = $row;
}

echo (json_encode($result));