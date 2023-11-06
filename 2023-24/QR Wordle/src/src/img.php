<?php
$perm = [63, 10, 52, 57, 61, 17, 25, 36, 27, 46, 47, 43, 49, 51, 34, 33, 24, 4, 22, 14, 29, 8, 50, 31, 15, 20, 48, 39, 30, 38, 11, 3, 54, 59, 2, 37, 40, 21, 12, 58, 45, 23, 16, 28, 56, 18, 26, 32, 42, 1, 9, 44, 62, 35, 13, 60, 41, 55, 5, 7, 0, 53, 19, 6];
if(isset($_GET) && isset($_GET['img'])){
    if(!ctype_digit($_GET['img'])){
        http_response_code(404);
        exit;
    }
    $val = (int)$_GET['img'];
    if($val < 0 || $val > 63){
        http_response_code(404);
        exit;
    }
    $val = $perm[$val];
    $row = floor($val/8);
    $col = $val%8;
    if($row > 7 || $row < 0){
        http_response_code(404);
        exit;
    }
    if($col > 7 || $col < 0){
        http_response_code(404);
        exit;
    }
    $row++;
    $col++;
    http_response_code(200);
    $name = "./data/data/row-$row-column-$col.png";
    $fp = fopen($name, 'rb');

    // send the right headers
    header("Content-Type: image/png");
    header("Content-Length: " . filesize($name));

    // dump the picture and stop the script
    fpassthru($fp);
}else{
    http_response_code(500);
}