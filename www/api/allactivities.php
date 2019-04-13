<?php

require_once("../inc/std_include.php");

$conn = DBConn::inst();

$data = $conn->get_array("activities",FieldFilters::$FILTER_ACTIVITIES_ALL);

JSONResp::info_resp("Pobrano listę aktywności", "data.activitieslist::success", $data);
