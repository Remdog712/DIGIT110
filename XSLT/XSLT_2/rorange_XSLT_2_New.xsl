<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
<!-- rorange #1 -->
    <xsl:template match="/"> 
        <html>
            <head> 
                <title>Image Directory for Alice's Adventures Underground</title>
            </head>
            <body>
                <h1>An Image Directory for Alice's Adventures Underground</h1>
                
<!-- rorange #2 -->
                <xsl:apply-templates select="root/chapter"/>  
            </body>
        </html>
    </xsl:template>
    
  
    <xsl:template match="chapter">
        <ul class="outerList">
            <li>
                <!-- Extract and output the chapter heading -->
                <xsl:value-of select="heading"/>
                <!-- Create a sublist for images -->
                <ul class="sublist">
                    <!-- rorange #4 -->
                    <xsl:apply-templates select="image"/>
                </ul>
            </li>
        </ul>
    </xsl:template>
    
    <!-- Template for image elements -->
    <xsl:template match="image">
        <li>
            <!-- Extract and output the image URL from the source attribute -->
            <xsl:value-of select="@source"/>
        </li>
    </xsl:template>
    
</xsl:stylesheet>