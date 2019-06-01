<?php

$currency = getenv('CURRENCY');

$data = [
    "value" => "100.000 $currency"
];

$json = json_encode($data);
header('Content-type: application/json');
header('Access-Control-Allow-Origin: *');
echo $json;