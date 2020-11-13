<?php
    include("connect.php");
    $result = array();


function getAllFave($conn) {

    $query = "SELECT * FROM tbl_myfavethings";

    $runQuery = $conn->query($query);

    while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)){
        $result[] = $row;
    }

    echo (json_encode($result));

}

function getSingleFave($conn, $id) {

    $query = "SELECT * FROM tbl_myfavethings WHERE ID= $id";

    $runQuery = $conn->query($query);

    while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)){
        $result[] = $row;
    }

    echo (json_encode($result));

}