xquery version "3.1";
declare variable $year := request:get-parameter('year', '1968');
let $autocoll := collection('/db/auto/')/*
let $built := $autocoll//built
let $names:= $autocoll[.//built/@when ! string() = $year]//name
for $n in $names 
      return

        <li>{$n}</li>

