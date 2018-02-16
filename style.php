<?php
////// CSS FILE HEADER //////
header("Content-type: text/css"); 

////// CSS FILE CONTENTS //////
echo "

html{
	height:100%;
}

body{
	font-family:Helvetica,Arial;
	display:flex;
	display:-webkit-flex;
	align-items:center;
	justify-content:center;
	-webkit-align-items:center;
	-webkit-box-align:center;
	-webkit-justify-content:center;
	height:100%;
}

.box{
	/* First 3 hex digits from the container's hostname make up the color of the application. */
	background:#" .  substr(gethostname(), 0, 3)  . ";
	color:white;
	text-align:center;
	border-radius:10px;
	display:inline-block;
}

h1{
	font-size:10em;
	line-height:1.5em;
	margin:0 0.5em;
}

h2{
	margin-top:0;
}

";

?>


