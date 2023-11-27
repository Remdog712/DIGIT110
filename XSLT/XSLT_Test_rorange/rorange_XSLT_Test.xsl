<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes"/>
    
    <!-- rorange: Part of the table of contents -->
    <xsl:template match="chapter" mode="toc">
        <tr>
            <td>
                <a href="#chapter_{position()}">
                    <xsl:value-of select="heading"/>
                </a>
            </td>
            <!-- rorange: cleans up the locations and tech so they don't repeat and so it grabs them from chapters -->
            <td>
                <xsl:variable name="distinctLocations" select="distinct-values(p/location/normalize-space(.))"/>
                <xsl:for-each select="$distinctLocations">
                    <xsl:value-of select="."/>
                    <xsl:if test="position() != last()">, </xsl:if>
                </xsl:for-each>
            </td>
            <td>
                <xsl:variable name="distinctTech" select="distinct-values(p/tech/normalize-space(.))"/>
                <xsl:for-each select="$distinctTech">
                    <xsl:value-of select="."/>
                    <xsl:if test="position() != last()">, </xsl:if>
                </xsl:for-each>
            </td>
        </tr>
    </xsl:template>
    <!-- rorange: handles the chapter linking -->
    <xsl:template match="chapter">
        <h2>
            <a name="chapter_{position()}">
                <xsl:value-of select="heading"/>
            </a>
        </h2>
        <xsl:apply-templates select="p"/>
    </xsl:template>
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <!-- rorange: creates the classes for the CSS in the reading view -->
    <xsl:template match="location | tech | date | time">
        <span class="{local-name()}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <!-- rorange: HTML stuffs -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Remington Orange - XSLT TEST of Dracula</title>
                <link rel="stylesheet" type="text/css" href="style.css"/>
            </head>
            <body>
                <!-- rorange: This parts adds the title at the top -->
                <h1 id="top">
                    <xsl:value-of select="root/title"/>
                </h1>
                <!-- rorange: Table of contents part -->
                <section id="contents">
                    <table>
                        <tr>
                            <th>Chapter</th>
                            <th>Locations In Chapter</th>
                            <th>Tech In Chapter</th>
                        </tr>
                        <xsl:apply-templates select="root/chapter" mode="toc"/>
                    </table>
                </section>
               <section id="readingView">
                    <xsl:apply-templates select="root/chapter"/>
                </section>   
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
