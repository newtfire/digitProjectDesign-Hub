xquery version "3.1";
declare default element namespace "http://www.w3.org/1999/xhtml";
declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";
declare option output:doctype "doctype-public";
declare variable $btrees := collection('/db/btrees/')/*;
declare variable $entries := $btrees//Q{}entry;
declare variable $ThisFileContent := 
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="UTF-8" />
        <meta name="author" content="My Name" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
   <!--ebb: Trying this as a set of tables with headings on the left: 
   Also: setting a dropdown list of trees to select from.
   -->
     <label for="commonChoice">Choose the common name of a tree: </label>
        <input id="commonChoice" list="common-names" />
        
        <datalist id="common-names">
        
        { 
            for $e in $entries
            let $cname := $e/Q{}cname ! data()
            return 
        
            <option id="c_{$e/@xml:id}" value="{$cname}"/>
        }
        </datalist>
  <label for="scientChoice">Choose the scientific name of a tree: </label>
        <input id="scientChoice" list="scientific-names" />
        
        <datalist id="scientific-names">
        
        { 
            for $e in $entries
            let $sname := $e/Q{}sname ! data()
            return 
        
            <option id="s_{$e/@xml:id}" value="{$sname}"/>
        }
        </datalist>
{
for $e in $entries
let $cname := $e/Q{}cname ! data() 
let $sname := $e/Q{}sname ! normalize-space()
let $desc := $e/Q{}desc ! normalize-space()
let $type := $e/Q{}treeType ! normalize-space()
let $status := $e/Q{}status ! normalize-space()
let $origin := $e/Q{}origin ! normalize-space()
let $height := $e/Q{}height ! normalize-space()
let $seed := $e/Q{}seed ! normalize-space()
let $leaf := $e/Q{}leaf ! normalize-space()
return 
<table id="{$e/@xml:id}">
    <tr>
       <th>Common Name</th>
       <td>{$cname}</td>
    </tr>
    <tr>
        <th>Scientific Name</th>
        <td>{$sname}</td>
    </tr>
    <tr>
        <th>Tree Type</th>
        <td>{$type}</td>
    </tr>
    <tr>
        <th>Conservation Status</th>
        <td>{$status}</td>
    </tr>
    <tr>
        <th>Origin Location</th>
        <td>{$origin}</td>
    </tr>
    <tr>
        <th>Height</th>
        <td>{$height}</td>
    </tr>
    <tr>
        <th>Seed Type</th>
        <td>{$seed}</td>
    </tr>
    <tr>
        <th>Leaf Description</th>
        <td>{$leaf}</td>
    </tr>
    <tr>
        <th>Description</th>
        <td>{$desc}</td>
    </tr>
    <tr class="deco">
        <td></td>
        <td><img src="leaf_breaker.png" alt="decorative leaf"/></td>
    </tr>
</table>
}

</body>
</html> ;

let $filename := "treesScrollTable.html"
let $doc-db-uri := xmldb:store("/db/btrees-queries", $filename, $ThisFileContent, "xhtml")
return $doc-db-uri  
(: Output at http://newtfire.org:8338/exist/rest/db/btrees-queries/treesScrollTable.html :)  

