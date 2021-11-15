<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="xs math xd"
    version="3.0">
  
<xsl:mode on-no-match="shallow-skip"/>
      
      <xsl:template match="/">
         <xml>
          <xsl:apply-templates select="descendant::cutscene"/>
         </xml>
      </xsl:template>
  
  <xsl:template match="cutscene[@location]">
      <scene location="{@location}"/>
   
  </xsl:template>
    
</xsl:stylesheet>