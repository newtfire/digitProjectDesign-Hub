<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Find Cars by Year</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" type="text/css" href="webstyle.css"/>
    </head>
    <body>
        <h1>Choose a year below, to find out the cars manufactured in that year.</h1>
        <p>The list reflects what years we have currently have available in our records.</p>
        <hr/>
        <!--ebb: START the process by including the autoYears.php with its call to eXist-dB to output a list of years. 
            We're saving this file as index.php so it's the root of our directory for our php-example, understood as a starting point. 
        On newtfire, find this file published at https://newtfire.org/courses/tutorials/php-examples/
        -->
    
        <?php include("autoGetYears.php")?>

    </body>
</html>