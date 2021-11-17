# Network Analysis Exercise 1: Preparation

What's a network analysis? It's a way of studying how data about people/places/items/characters (anything you're tracking) is related by shared properties or contexts. For example, on this page scroll to see [a network analysis plotted from blues lyrics data based on shared decades](https://am0eba-byte.github.io/blues/index.html). This super speedy tutorial is an abbreviated version of [our older Network Analysis tutorial on newtfire](http://ebeshero.github.io/thalaba/cytosc.html), and [our original exercises in XQuery on the Decameron](https://newtfire.org/courses/tutorials/NetworkExercise1.html).

For this intro orientation, we're working with code from the DIGIT 400 Smash Tiers project, to create a network analysis of information about Mario Brothers' characters, the games they appear in and the tiers they share. We'll be working with Cytoscape software to plot the graph. 

## Cytoscape 
You can work with Cytoscape in the DIGIT computer lab classrooms (in Kochel 77, Witkowski 109, and in Lilley library). You can [download and install it on your computer for free from Cytoscape](https://cytoscape.org/).

## eXist-dB and prepping the data
Cytoscape expects to see network data in a **tab-separated values** format, which is a special form of text that is importable into spreadsheets and lots of visualization software. Network data to be imported needs to follow the format of:

Source Node \tab Edge \tab Target Node \linefeed

**Explanation:** 
"Nodes" are features you're connecting. 

"Edges" are connecting lines (sometimes also called "bridges") between nodes.
 (and the linefeed is a hard return character). 

Often we output additional data, descriptors for nodes and edges, that we use to style our plot, so we may be outputting some extra values like this:

Source Node \tab Node Edge \tab Edge-Data \tab Target Node \linefeed

Edge data might be a numerical count of how many times a connection occurs, and we can import that information to add "weight" to thicken our connecting lines if we organize our data to process, say all the distinct values of characters, and then count the number of times they are connected to each other based on tiers.  

We can output that text TSV format with XQuery as a plain text output file, saved with the extension **.tsv**
We need to work with some special characters to give us tab separators:

* tab character: `"&#x9;"` 
* line-feed charcter: `"&#10;`

## Addressing Smash Tiers data in eXist-dB
First, inspect the data stored in our newtfire eXist-dB at `/db/smashtiers/supersmashtierlist.xml`

We'll create an XQuery script to reach into the Smash Tiers data with this global variable:
```
declare variable $charfile := doc('/db/smashtiers/supersmashtierlist.xml');
```

Then let's think about our network: 
**Let's network characters with game numbers as their connectors, and show the tiers they're in:**

* Source node: Character
* Edge connector: Game number
* Target node: Tier info


This is a "bimodal" network: Characters connected to Tiers via the games they're in.

We could switch this up:
*  Characters connected to Game Numbers, with Tiers as the connector
* Characters connected by Tiers only,
* Characters connected to each other via Games, just by virtue of connection. 

Notes continue in the newtfire eXist-dB at 
` /db//2021-Dig400-Examples/NETWORK-SmashTiers.xql`




