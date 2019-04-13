<?php

class JSONResp {

	public static function error_resp($message, $context) {
		$obj["type"] = "error";
		$obj["message"] = $message;
		$obj["context"] = $context;

		echo json_encode($obj);
	}

	public static function info_resp($message, $context, $object = null) {
		$obj["type"] = "info";
		$obj["message"] = $message;
		$obj["context"] = $context;
		if ($object !== null) {
			$obj["responseObject"] = $object;
		}

		echo json_encode($obj);
	}
}
