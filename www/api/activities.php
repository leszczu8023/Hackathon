<?php

require_once("../inc/std_include.php");

$conn = DBConn::inst();

$data = $conn->get_array("vUsersToActivities",FieldFilters::$FILTER_ACTIVITIES, "userid = " . $_SESSION["userId"]);

if (!$data) {
	JSONResp::error_resp("Nieprawidłowa nazwa użytkownika lub hasło", "data.activities::failed");
}
else
{
	JSONResp::info_resp("Pobrano listę aktywności!", "data.activities::success", $data);
}
