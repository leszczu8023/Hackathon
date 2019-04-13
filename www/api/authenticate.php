<?php

$authcheck = false;

require_once("../inc/std_include.php");

$conn = DBConn::inst();

$user = Utils::get_filtered_post("login");
$pass = Utils::get_filtered_post("password");

$data = $conn->get_obj("users",FieldFilters::$FILTER_STDUSER, "LOWER(username) = LOWER(\"$user\") and password = \"$pass\"");

if (!$data) {
	JSONResp::error_resp("Nieprawidłowa nazwa użytkownika lub hasło", "authenticate::invalid");
}
else
{
	$_SESSION["isAuthenticated"] = "true";
	$_SESSION["userId"] = $data->uid;
	JSONResp::info_resp("Zalogowano! (uid: {$data->uid})", "authenticate::success", $data);
}
