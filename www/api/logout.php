<?php

header("Content-type: application/json");

session_start();
session_destroy();

require_once("../inc/json_response.php");

JSONResp::info_resp("Pomyślnie wylogowano!", "authentication::logout");
