<?php

require_once("../inc/std_include.php");

$conn = DBConn::inst();

$data = $conn->get_obj("users", FieldFilters::$FILTER_STDUSER, "uid = " . $_SESSION["userId"]);

if (!$data) {
    JSONResp::error_resp("Nieprawidłowa nazwa użytkownika lub hasło", "data.userinfo::failed");
} else {
    $eee = Utils::get_fields_post("browser");
    $s = $conn->get_array("activities");
    
    $acts = [];
    foreach ($s as $k) {
        $acts[((int)$k["activityId"])] = $k["typeActivity"]; 
    }
    
    $values = [];
    $l = 0;
    foreach ($eee as $k) {
        $x = $conn->get_array("activities_to_activities", null, "parent_activity = $k");
        if ($x !== null) {
            $values[$l] = $x;
        }
        $l++;
    }
    
    
 
    $val = [];
    $c = count($values[0]);
    
    if ($c <= 0) 
    {
        header("Location: https://hc.leszczu8023.ovh/Summary?state=empty");
        exit(0);
    }
    
    //var_dump($values);
    
    if ($c === 1) {
        if (isset($values[0])) {
            $val[] =  $values[0][0]["related1"];
            $val[] =  $values[0][0]["related2"];
            $val[] =  $values[0][0]["related3"];
            $val[] =  $values[0][0]["related4"];
            $val[] =  $values[0][0]["related5"];
        }
    }
    else if ($c === 2) {
        if (isset($values[0])) {
            $val[] =  $values[0][0]["related1"];
            $val[] =  $values[0][0]["related2"];
            $val[] =  $values[0][0]["related3"];
        }
        if (isset($values[1])) {
            $val[] =  $values[1][0]["related4"];
            $val[] =  $values[1][0]["related5"];
        }
    }
    else if ($c === 3) {
        if (isset($values[0])) {
            $val[] =  $values[0][0]["related1"];
            $val[] =  $values[0][0]["related2"];
        }
        if (isset($values[1])) {
            $val[] =  $values[1][0]["related3"];
            $val[] =  $values[1][0]["related4"];
        }
        if (isset($values[2])) {
            $val[] =  $values[2][0]["related5"];
        }
    }
    else if ($c === 4) {
        if (isset($values[0])) {
            $val[] =  $values[0][0]["related1"];
        }
        if (isset($values[1])) {
            $val[] =  $values[1][0]["related2"];
        }
        if (isset($values[2])) {
            $val[] =  $values[2][0]["related3"];
        }
        if (isset($values[3])) {
            $val[] =  $values[3][0]["related4"];
            $val[] =  $values[3][0]["related5"];
        }
    }
    else if ($c === 5) {
        if (isset($values[0])) {
            $val[] =  $values[0][0]["related1"];
        }
        if (isset($values[1])) {
            $val[] =  $values[1][0]["related2"];
        }
        if (isset($values[2])) {
            $val[] =  $values[2][0]["related3"];
        }
        if (isset($values[3])) {
            $val[] =  $values[3][0]["related4"];
        }
        if (isset($values[4])) {
            $val[] =  $values[4][0]["related5"];
        }
    }
    
    $result = [];
    foreach ($val as $eeee) {
        $x = $conn->get_array("activities_locations", null, "activityid = $eeee");
        $result[] = array("id"=>$eeee, "value"=>$acts[$eeee], "addresses"=>$x);
    }
        
    //echo json_encode($result);
    $resp = array(
        'data' => json_encode($result),
        'state' => 'ok'
    );
    
    
    
    header("Location: https://hc.leszczu8023.ovh/Summary?". http_build_query($resp));
    //JSONResp::info_resp("Testvar: [" . join(", ", ) . "]", "data.userinfo::success", $data);
}
