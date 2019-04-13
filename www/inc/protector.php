<?php

//session_start();

require_once("config.php");
require_once("json_response.php");

if ($_CONF["test_mode"] !== 1 && (!isset($authcheck) || $authcheck !== false)) {


if (!isset($_SESSION["isAuthenticated"]) || $_SESSION["isAuthenticated"] !== "true") {
	JSONResp::error_resp("Brak sesji lub sesja wygasła!", "authentication::authNeeded");
	exit();
}

}

