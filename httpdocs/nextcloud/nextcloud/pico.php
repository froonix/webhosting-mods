<?php

if(substr($_SERVER['REQUEST_URI'], 0, 9) === '/pico.php')
{
	header('Location: /');
	exit;
}

# Workaround: https://github.com/nextcloud/cms_pico/issues/125
foreach(['PHP_SELF', 'SCRIPT_FILENAME', 'SCRIPT_NAME'] as $key)
{
	$_SERVER[$key] = str_replace('/pico.php', '/index.php', $_SERVER[$key]);
}

$site = preg_replace('#^/sites/#', '', $_SERVER['REQUEST_URI']);
$site = preg_match('#^($|\?)#', $site) ? 'default-site' : $site;
$_SERVER['REQUEST_URI'] = '/apps/cms_pico/pico_proxy/' . $site;
require_once(__dir__ . '/index.php');
