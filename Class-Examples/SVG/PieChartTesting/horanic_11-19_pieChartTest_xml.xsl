<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math ="http://www.w3.org/2005/xpath-functions/math"
    xmlns="http://www.w3.org/2000/svg"
    exclude-result-prefixes="xs math"
    version="2.0">
    
    <xsl:output method="xml" indent="yes"/>  
    
    <!--VARIABLES FOR TOTALS-->
    <xsl:variable name="lotTotal" select="count(//lot)"/>
    <xsl:variable name="occTotal" select="count(//occupant)"/>
    
    <!--IMPORTANT COMMENTS-->
    
    <xsl:template match="/">
        <xsl:comment>TOTALS</xsl:comment>
        <xsl:comment>The total number of lots is: <xsl:value-of select="$lotTotal"/>.</xsl:comment>
        <xsl:comment>The total number of occupants is: <xsl:value-of select="$occTotal"/>.</xsl:comment>
        <xsl:comment>DATA POINTS</xsl:comment>
        <xsl:for-each select="//lot">
            <xsl:comment>There are <xsl:value-of select="count(descendant::occupant)"/> occupants for lot #<xsl:value-of select="@number"/>.</xsl:comment>
        </xsl:for-each>
        <xsl:comment>HOW TO CHART ON THE CIRCLE</xsl:comment>
        <xsl:comment>To make a pie chart, the data has to be proportional to 360, because a circle has 360 degrees.
        1. Find the total number of repeats for each instance, these make up the slices.
        2. Find the total of all the instances you want to display on the chart by adding them together.
        3. Now divide each slice total by the total number of instances to get a percentage.
        4. Multiply this percentage by 2pi (2 * pi) to be know the radian of each slice.
        5.
        6.
        7.
        8. Plot each slice using the radian in the path element and make sure they all fit the circle properly.</xsl:comment>
        
        <!--ANGLE VARIABLES-->
            <!--RADIUS-->
        <xsl:variable name="radius" select="250"/>
        <!--Check the output window and count the number of times a value appers
            for these individual slices (these are the numbers being divided).-->
            <!--RADIANS-->
        <xsl:variable name="occ2slice" select="(2 div $lotTotal) * (2 * math:pi())"/>
        <xsl:variable name="occ3slice" select="$occ2slice + ((1 div $lotTotal) * (2 * math:pi()))"/>
        <xsl:variable name="occ4slice" select="$occ3slice + ((2 div $lotTotal) * (2 * math:pi()))"/>
        <xsl:variable name="occ5slice" select="$occ4slice + ((2 div $lotTotal) * (2 * math:pi()))"/>
        <xsl:variable name="occ6slice" select="$occ5slice + ((1 div $lotTotal) * (2 * math:pi()))"/>
        <xsl:variable name="occ9slice" select="$occ6slice + ((1 div $lotTotal) * (2 * math:pi()))"/>
        <xsl:comment>CALCULATE THE RADIANS</xsl:comment>
        <xsl:comment>
            1. Radian of occ2slice: <xsl:value-of select="$occ2slice"/>
            2. Radian of occ3slice: <xsl:value-of select="$occ3slice"/>
            3. Radian of occ4slice: <xsl:value-of select="$occ4slice"/>
            4. Radian of occ5slice: <xsl:value-of select="$occ5slice"/>
            5. Radian of occ6slice: <xsl:value-of select="$occ6slice"/>
            6. Radian of occ9slice: <xsl:value-of select="$occ9slice"/>
        </xsl:comment>
            <!--COSINE FOR X-->
        <xsl:variable name="occ2cos" select="math:cos($occ2slice)"/>
        <xsl:variable name="occ3cos" select="math:cos($occ3slice)"/>
        <xsl:variable name="occ4cos" select="math:cos($occ4slice)"/>
        <xsl:variable name="occ5cos" select="math:cos($occ5slice)"/>
        <xsl:variable name="occ6cos" select="math:cos($occ6slice)"/>
        <xsl:variable name="occ9cos" select="math:cos($occ9slice)"/>
        <xsl:comment>CALCULATE THE COSINE</xsl:comment>
        <xsl:comment>
            1. Cosine of occ2slice: <xsl:value-of select="$occ2cos"/>
            2. Cosine of occ3slice: <xsl:value-of select="$occ3cos"/>
            3. Cosine of occ4slice: <xsl:value-of select="$occ4cos"/>
            4. Cosine of occ5slice: <xsl:value-of select="$occ5cos"/>
            5. Cosine of occ6slice: <xsl:value-of select="$occ6cos"/>
            6. Cosine of occ9slice: <xsl:value-of select="$occ9cos"/>
        </xsl:comment>
            <!--SINE FOR Y-->
        <xsl:variable name="occ2sin" select="math:sin($occ2slice)"/>
        <xsl:variable name="occ3sin" select="math:sin($occ3slice)"/>
        <xsl:variable name="occ4sin" select="math:sin($occ4slice)"/>
        <xsl:variable name="occ5sin" select="math:sin($occ5slice)"/>
        <xsl:variable name="occ6sin" select="math:sin($occ6slice)"/>
        <xsl:variable name="occ9sin" select="math:sin($occ9slice)"/>
        <xsl:comment>CALCULATE THE SINE</xsl:comment>
        <xsl:comment>
            1. Sine of occ2slice: <xsl:value-of select="$occ2sin"/>
            2. Sine of occ3slice: <xsl:value-of select="$occ3sin"/>
            3. Sine of occ4slice: <xsl:value-of select="$occ4sin"/>
            4. Sine of occ5slice: <xsl:value-of select="$occ5sin"/>
            5. Sine of occ6slice: <xsl:value-of select="$occ6sin"/>
            6. Sine of occ9slice: <xsl:value-of select="$occ9sin"/>
        </xsl:comment>
        <!--X AXIS-->
        <xsl:variable name="occ2X" select="$occ2cos * $radius"/>
        <xsl:variable name="occ3X" select="$occ3cos * $radius"/>
        <xsl:variable name="occ4X" select="$occ4cos * $radius"/>
        <xsl:variable name="occ5X" select="$occ5cos * $radius"/>
        <xsl:variable name="occ6X" select="$occ6cos * $radius"/>
        <xsl:variable name="occ9X" select="$occ9cos * $radius"/>
        <xsl:comment>CALCULATE THE X VALUES</xsl:comment>
        <xsl:comment>
            1. X value for occ2slice: <xsl:value-of select="$occ2X"/>
            2. X value for occ3slice: <xsl:value-of select="$occ3X"/>
            3. X value for occ4slice: <xsl:value-of select="$occ4X"/>
            4. X value for occ5slice: <xsl:value-of select="$occ5X"/>
            5. X value for occ6slice: <xsl:value-of select="$occ6X"/>
            6. X value for occ9slice: <xsl:value-of select="$occ9X"/>
        </xsl:comment>
        <!--Y AXIS-->
        <xsl:variable name="occ2Y" select="$occ2sin * $radius"/>
        <xsl:variable name="occ3Y" select="$occ3sin * $radius"/>
        <xsl:variable name="occ4Y" select="$occ4sin * $radius"/>
        <xsl:variable name="occ5Y" select="$occ5sin * $radius"/>
        <xsl:variable name="occ6Y" select="$occ6sin * $radius"/>
        <xsl:variable name="occ9Y" select="$occ9sin * $radius"/>
        <xsl:comment>CALCULATE THE Y VALUES</xsl:comment>
        <xsl:comment>
            1. Y value for occ2slice: <xsl:value-of select="$occ2Y"/>
            2. Y value for occ3slice: <xsl:value-of select="$occ3Y"/>
            3. Y value for occ4slice: <xsl:value-of select="$occ4Y"/>
            4. Y value for occ5slice: <xsl:value-of select="$occ5Y"/>
            5. Y value for occ6slice: <xsl:value-of select="$occ6Y"/>
            6. Y value for occ9slice: <xsl:value-of select="$occ9Y"/>
        </xsl:comment>
        
        <!--SVG OUTPUT VIEW WINDOW-->
        <!--While ploting points, pay attention to which "quarter" of the circle the END point of the arc
        should hit. This will determine if the value is required to be positive or negitive to work.-->
        <svg width="100%" height="100%">
            <g transform="translate(350 350)" >
                <circle cx="0" cy="0" r="{$radius}" style="stroke:black; stroke-width:3; fill:none"/>
                <path d="M0,0
                    L{$radius},0
                    A{$radius},{$radius} 0 0,1 {$occ2X},{$occ2Y}
                    Z"
                    style="stroke:black; stroke-width:3; fill: green"/>
                <path d="M0,0
                    L{$occ2X},{$occ2Y}
                    A{$radius},{$radius} 0 0,1 {$occ3X},{$occ3Y}
                    Z"
                    style="stroke:black; stroke-width:3; fill: blue"/>
                <path d="M0,0
                    L{$occ3X},{$occ3Y}
                    A{$radius},{$radius} 0 0,1 {$occ4X},{$occ4Y}
                    Z"
                    style="stroke:black; stroke-width:3; fill: red"/>
                <path d="M0,0
                    L{$occ4X},{$occ4Y}
                    A{$radius},{$radius} 0 0,1 {$occ5X},{$occ5Y}
                    Z"
                    style="stroke:black; stroke-width:3; fill: yellow"/>
                <path d="M0,0
                    L{$occ5X},{$occ5Y}
                    A{$radius},{$radius} 0 0,1 {$occ6X},{$occ6Y}
                    Z"
                    style="stroke:black; stroke-width:3; fill: orange"/>
                <path d="M0,0
                    L{$occ6X},{$occ6Y}
                    A{$radius},{$radius} 0 0,1 {$occ9X},{$occ9Y}
                    Z"
                    style="stroke:black; stroke-width:3; fill: purple"/>
                
            </g>
        </svg>
    </xsl:template>
    
</xsl:stylesheet>