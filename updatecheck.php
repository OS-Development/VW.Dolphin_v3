<?
$link = mysql_connect('dbserver', 'dbuser', ''password);
if (!$link) {
    die('Could not connect: ' . mysql_error());
}

$sql = 'SELECT COUNT(*) FROM `dolphinviewer_versions` WHERE `VERSION` LIKE \''.$_ENV["HTTP_USER_AGENT"].'\'';

$result = mysql_query('use frozenglobe_wpdb;');
if (!$result) {
    die('Invalid query: ' . mysql_error());
}

$result = mysql_query($sql);
if (!$result) {
    die('Invalid query: ' . mysql_error());
}

echo mysql_result($result, 0);

mysql_close($link);
?>
