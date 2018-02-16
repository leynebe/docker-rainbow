<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>PHP APACHE (<?php echo gethostname();?>)</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" media="screen" href="style.php">
</head>
<body>
<div class="box"><h1><?php echo getenv('CONTAINERVERSION'); ?></h1><h2>Hostname: <?php echo gethostname(); ?></h2></div>
</body>
</html>
