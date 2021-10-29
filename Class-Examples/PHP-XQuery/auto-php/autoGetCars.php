<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Find Cars by Year</title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="webstyle.css"/>
</head>
<body>
<h1>Your search returned these cars</h1>
<hr/>


<!--ebb: Here we will simply pull in the year parameter from our PHP conversation -->
<h1>Made in <?php require_once("config.php"); echo htmlspecialchars($_GET["year"])?></h2>
<ul>
<!--ebb: Now, we make a PHP call to the XQuery that populates our list of cars.  -->
<?php
    require_once("config.php");
    $year = htmlspecialchars($_GET["year"]);
    $contents = REST_PATH . "/db/2021-Dig400-Examples/autoPHPGetCars.xql?year=$year";
    $result = file_get_contents($contents);
    echo $result;
?>
</ul>
<!--ebb: Here we'll let visitors choose a new year if they wish. -->
 <h1>Choose a year below, to find out the cars manufactured in that year.</h1>
        <p>The list reflects what years we have currently have available in our records.</p>
<!--ebb: Now we just set a PHP include to pull in the original autoGetYears.php inside this file. -->
<?php include("autoGetYears.php");?> 

</body>
</html> 