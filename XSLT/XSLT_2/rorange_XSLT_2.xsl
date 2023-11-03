<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    <xsl:template match="/">  <!-- rorange #1 -->
        <html>
            <head> 
                <title>Image Directory for Alice's Adventures Underground</title>
            </head> <!-- rorange #2 -->
            <body>
                <h1>An Image Directory for Alice's Adventures Underground</h1>
                <xsl:apply-templates select="root/chapter"/>  <!-- rorange #3 -->
            </body>
        </html>
    </xsl:template>
    <xsl:template match="chapter">
        <ul class="outerList">
            <li>
                <xsl:value-of select="heading"/>
                <ul class="sublist">
                    <xsl:apply-templates select="image"/> <!-- rorange #4 -->
                </ul>
            </li>
        </ul>
    </xsl:template>
    <xsl:template match="image">
        <li>
            <xsl:value-of select="@source"/>
        </li>
    </xsl:template>
    
</xsl:stylesheet>