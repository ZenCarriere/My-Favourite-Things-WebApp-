<?php
include("connect.php");
include("functions.php");

if(isset($_GET["id"])){
    //get one item from the database and asked for in the ui
    $targetID = $_GET["id"];
    $result = getSingleFave($pdo, $targetID);

    return $result;
} else{
    $allFaves = getAllFave($pdo);

    return $allFaves;
}