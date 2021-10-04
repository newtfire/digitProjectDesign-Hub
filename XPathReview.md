# Top things we need to do with XPath

## Consult resources: 
* [Newtfire XPath Tutorial](https://newtfire.org/courses/tutorials/explainXPath.html)
* [Obdurodon: XPath Functions we use the most](http://dh.obdurodon.org/functions.xhtml)

## XPath steps 
* Axes: 
    * child:: 
    * attribute::  `@`
    * descendant:: `//` and `.//` in a predicate
    * self:: `.`
    * parent::  `..`
    * ancestor:: 
    * preceding-sibling:: 
    * following-sibling::
    * preceding::
    * following::

## Main Kinds of XML nodes to reach
* Element
* Attribute
* Document node(s)
* Comment (yes, you can XPath to your `<!-- XML comments -->`
* Processing-instruction (like your Relax NG schema line)

## Writing predicate filters
* //node()[@type="something" ]
* //element[descendant::something/@type]









