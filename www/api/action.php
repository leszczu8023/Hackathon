<?php

require_once("../inc/std_include.php");

$conn = DBConn::inst();

$data = $conn->get_obj("users", FieldFilters::$FILTER_STDUSER, "uid = " . $_SESSION["userId"]);

if (!$data) {
    JSONResp::error_resp("Nieprawidłowa nazwa użytkownika lub hasło", "data.userinfo::failed");
} else {
    $eee = Utils::get_fields_post("browser");
    
    
    
    
    $s = $conn->get_array("activities");
    
    $values = [];
    $l = 0;
    foreach ($eee as $k) {
        $x = $conn->get_array("activities_to_activities", null, "parent_activity = $k");
        if ($x !== null) {
            $values[$l] = $x;
        }
        $l++;
    }
    
    if (count($values) <= 0) 
    {
        header("Location: http://hc.leszczu8023.ovh:3000/Summary?state=notFound");
        exit(0);
    }
 
    $val = [];
    $c = count($values);
    
    if ($c === 1) {
        if (isset($values[0])) {
            var_dump($values);
            $val[] =  $values[0]["related1"];
            $val[] =  $values[0]["related2"];
            $val[] =  $values[0]["related3"];
            $val[] =  $values[0]["related4"];
            $val[] =  $values[0]["related5"];
        }
    }
    else if ($c === 2) {
        if (isset($values[0])) {
            $val[] =  $values[0]["related1"];
            $val[] =  $values[0]["related2"];
            $val[] =  $values[0]["related3"];
        }
        if (isset($values[1])) {
            $val[] =  $values[1]["related4"];
            $val[] =  $values[1]["related5"];
        }
    }
    else if ($c === 3) {
        if (isset($values[0])) {
            $val[] =  $values[0]["related1"];
            $val[] =  $values[0]["related2"];
        }
        if (isset($values[1])) {
            $val[] =  $values[1]["related3"];
            $val[] =  $values[1]["related4"];
        }
        if (isset($values[2])) {
            $val[] =  $values[2]["related5"];
        }
    }
    else if ($c === 4) {
        if (isset($values[0])) {
            $val[] =  $values[0]["related1"];
        }
        if (isset($values[1])) {
            $val[] =  $values[1]["related2"];
        }
        if (isset($values[2])) {
            $val[] =  $values[2]["related3"];
        }
        if (isset($values[3])) {
            $val[] =  $values[3]["related4"];
            $val[] =  $values[3]["related5"];
        }
    }
    else if ($c === 5) {
        if (isset($values[0])) {
            $val[] =  $values[0]["related1"];
        }
        if (isset($values[1])) {
            $val[] =  $values[1]["related2"];
        }
        if (isset($values[2])) {
            $val[] =  $values[2]["related3"];
        }
        if (isset($values[3])) {
            $val[] =  $values[3]["related4"];
        }
        if (isset($values[4])) {
            $val[] =  $values[4]["related5"];
        }
    }
    
    $resp = array(
        'data' => json_encode($val),
    );
    
    
    
    //header("Location: http://hc.leszczu8023.ovh:3000/Summary?". http_build_query($resp));
    //JSONResp::info_resp("Testvar: [" . join(", ", ) . "]", "data.userinfo::success", $data);
}