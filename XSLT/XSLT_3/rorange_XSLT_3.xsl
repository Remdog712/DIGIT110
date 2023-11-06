<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Remington Orange Skryim XSLT</title>
            </head>
            <body>
                <h1>Remington Orange - Skryim XSLT</h1>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    

    <xsl:template match="QuestEvent">
        <span style="color: blue;" class="QuestEvent">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    

    <xsl:template match="QuestItem">
        <span style="color: green;" class="QuestItem">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
 
    <xsl:template match="character">
        <span style="color: red;" class="character">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    

    <xsl:template match="epithet">
        <span style="color: purple;" class="epithet">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    

    <xsl:template match="faction">
        <span style="color: grey;" class ="faction">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    

    <xsl:template match="location">
        <span style="color: orange;" class="location">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
</xsl:stylesheet>