<!DOCTYPE html>
<html>
    <head>
        <title>Mayan God Selector/Finder</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=New+Tegomin" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+Mayan+Numerals"
            rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Walter+Turncoat" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Dokdo" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Frijole" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=New+Tegomin" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Red+Hat+Display" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="mayanStyling.css" />
        <link rel="shortcut icon" type="image/png" href="images/hieroglyphs/woman.jpg" />
        <script src="javascript/php_godDropdownSelect.js">
            /**/</script>
    </head>
    <body>
         <!--#include virtual="top.html" -->
         
        <?php require_once("config.php");
        $contents = REST_PATH . "/db/mayan-queries/PHP.xql";
        $result = file_get_contents($contents);
        echo $result;
        ?>
        
         <!--#include virtual="footer.html" -->
    </body>
</html>