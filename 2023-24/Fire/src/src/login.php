
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="./style.css">
</head>
<body>
    <main>
    <h2>Login</h2>
    <?php
        if(isset($_POST) && isset($_POST["user"]) && isset($_POST["pass"]) && $_POST["user"] == "sud0Mega3" && $_POST["pass"] == "nev/73bsdf=.3hs2sdzz23"){
            echo "<h3>Good Job!!! Here is your flag: sudo{l0Okou1_foR_g1T_r3po5}</h3>";
        }else{
            echo "Something went wrong :(";
        } ?>
    </main>
</body>
</html>
