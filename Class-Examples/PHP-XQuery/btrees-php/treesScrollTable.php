<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Table of Behrend Trees</title>
        <link rel="stylesheet" type="text/css" href="treeBookScroll.css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
        <script src="scrollevent.js">/**/</script>
    </head>
    <body>
        <button id="scrollToTop">
            <i class="material-icons">arrow_upward</i>
        </button>
        <h1>Meet the Trees</h1>
        <?php
    require_once("config.php");
    $contents = REST_PATH . "/db/btrees-queries/btreesPHP-scrollJS.xql";
    $result = file_get_contents($contents);
    echo $result;
?>
       
 
    </body>
</html>