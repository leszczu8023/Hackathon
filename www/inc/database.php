<?php

require_once("config.php");

class DBConn {

private $dbconn;
function __construct() {
	global $_CONF;
	$this->dbconn = new mysqli($_CONF["db"]["host"], $_CONF["db"]["user"], $_CONF["db"]["pass"], $_CONF["db"]["name"]);
}

public function connection() {
	return $this->dbconn;
}

public function get_obj($val,$fields = null, $sqlstatement = null) {
	global $_CONF;
	$selector = "*";
	if ($fields !== null) {
		$selector = join(", ", $fields);
	}
	if (substr($val,0,1) !== "v") {
		$val = $_CONF["db"]["pref"] . "_" . $val;
	}

	$statement = "";

	if ($sqlstatement !== null) {
		$statement = "WHERE $sqlstatement";
	}

	$sql = "select $selector from $val $statement";

	if ($_CONF["db"]["debug"] === 1)
		echo $sql;

	$qe = $this->dbconn->query($sql);
	if (!$qe) {
		return false;
	}
	return $qe->fetch_object();
}

public function get_array($val,$fields = null, $sqlstatement = null) {
        global $_CONF;
        $selector = "*";
        if ($fields !== null) {
                $selector = join(", ", $fields);
        }
        if (substr($val,0,1) !== "v") {
                $val = $_CONF["db"]["pref"] . "_" . $val;
        }

        $statement = "";

        if ($sqlstatement !== null) {
                $statement = "WHERE $sqlstatement";
        }

        $sql = "select $selector from $val $statement";

        if ($_CONF["db"]["debug"] === 1)
                echo $sql;

        $qe = $this->dbconn->query($sql);
        if (!$qe) {
                return false;
        }
        $r = [];
	while( $ro = $qe->fetch_assoc() ) {
		$r[] = $ro;
	}
	return $r;
}

private static $__dbInstance;

public static function inst() {
	if (self::$__dbInstance === null) {
		self::$__dbInstance = new DBConn();
	}
	return self::$__dbInstance;
}

}

