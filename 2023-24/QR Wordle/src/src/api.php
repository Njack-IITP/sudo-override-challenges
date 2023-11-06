<?php
header("Content-Type: application/json");
// build a PHP variable from JSON sent using POST method
$v = json_decode(stripslashes(file_get_contents("php://input")));
$perm = [63, 10, 52, 57, 61, 17, 25, 36, 27, 46, 47, 43, 49, 51, 34, 33, 24, 4, 22, 14, 29, 8, 50, 31, 15, 20, 48, 39, 30, 38, 11, 3, 54, 59, 2, 37, 40, 21, 12, 58, 45, 23, 16, 28, 56, 18, 26, 32, 42, 1, 9, 44, 62, 35, 13, 60, 41, 55, 5, 7, 0, 53, 19, 6];
$perm_i = [60, 49, 34, 31, 17, 58, 63, 59, 21, 50, 1, 30, 38, 54, 19, 24, 42, 5, 45, 62, 25, 37, 18, 41, 16, 6, 46, 8, 43, 20, 28, 23, 47, 15, 14, 53, 7, 35, 29, 27, 36, 56, 48, 11, 51, 40, 9, 10, 26, 12, 22, 13, 2, 61, 32, 57, 44, 3, 39, 33, 55, 4, 52, 0];
if(count($v) != count($perm)){
    http_response_code(400);
    exit(0);
}
$ans = $v;
for($i = 0; $i < count($perm); $i++){
    $ans[$i] = (int)(floor($v[$i]/8) == floor($perm[$i]/8)) + (int)(($v[$i]%8)==($perm[$i]%8));
}
echo json_encode($ans);
?>