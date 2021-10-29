xquery version "3.1";
let $autocoll := collection('/db/auto/')/*
let $built := $autocoll//built
let $years := $built/@when ! string() =>  distinct-values() => sort()
for $y in $years
return 
<li>
    <a href="autoGetCars.php?year={$y}">{$y}</a>
<!--ebb: Nothing else goes in the body content EXCEPT our PHP call to the XQuery that populates our list of cars. -->
</li>
