<?php

class Utils {
	public static function get_filtered_post($field_name) {
		if (!isset($_POST[$field_name])) return "";
		return (String)$_POST[$field_name];
	}

	public static function get_filtered_json($field_name) {
		$data = json_decode(file_get_contents('php://input'), true);
		if (!isset($data[$field_name])) return "";
		return (String)$data[$field_name];
	}
}
