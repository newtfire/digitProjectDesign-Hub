
<ul>
<?php
    require_once("config.php");
    $contents = REST_PATH . "/db/2021-Dig400-Examples/autoPHPGetYears.xql";
    $result = file_get_contents($contents);
    echo $result;
?>
</ul>

