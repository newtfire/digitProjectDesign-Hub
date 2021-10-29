
<ul>
<?php
    require_once("config.php");
    $year = htmlspecialchars($_GET["year"]);

    $contents = REST_PATH . "/db/2021-Dig400-Examples/autoPHPGetYears.xql?year=$year";
    $result = file_get_contents($contents);
    echo $result;
?>
</ul>

