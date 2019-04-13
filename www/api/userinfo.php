<?php

require_once("../inc/std_include.php");

$conn = DBConn::inst();

$data = $conn->get_obj("users",FieldFilters::$FILTER_STDUSER, "uid = " . $_SESSION["userId"]);

if (!$data) {
	JSONResp::error_resp("Nieprawidłowa nazwa użytkownika lub hasło", "data.userinfo::failed");
}
else
{
	JSONResp::info_resp("Pobrano informacje o użytkowniku", "data.userinfo::success", $data);
}
