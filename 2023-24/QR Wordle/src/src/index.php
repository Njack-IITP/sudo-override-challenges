<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QR Code Wordle</title>
    <link rel="stylesheet" href="./style.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
</head>
<body>
    <h2>QR Code Wordle</h2>
    <p>A QR code block is green if it is at its correct position. Yellow if only one of its row or column is correct. White otherwise. Good luck.</p>
    <section id = "container">
    <?php
        for($i = 0; $i < 64; $i++){
            echo "<img src = './img.php?img=$i' id = 'part-$i' class='qr-part'/>";
        }
    ?>
    </section>
    <br/>
    <button onclick="randomize()" class="button">Random Shuffle</button>
    <script src = './script.js'></script>

</body>
</html>