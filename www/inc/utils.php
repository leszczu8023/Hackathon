<?php

class Utils {
	public static function get_filtered_post($field_name) {
		if (!isset($_POST[$field_name])) return "";
		return (String)$_POST[$field_name];
	}
}
