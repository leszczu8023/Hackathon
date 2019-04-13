<?php

session_start();

header("Access-Control-Allow-Origin: *");
header("Content-type: application/json");

require_once( __DIR__ . "/config.php");

if ($_CONF["test_mode"]) {
    error_reporting(E_ALL);
    ini_set('display_errors', 1);
    $_SESSION["userId"] = 1;
}

require_once( __DIR__ . "/utils.php" );
require_once( __DIR__ . "/field_filters.php" );
require_once( __DIR__ . "/protector.php" );
require_once( __DIR__ . "/database.php" );

