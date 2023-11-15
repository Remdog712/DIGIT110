<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:cbml="http://www.cbml.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="html" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Remington Orange - XSLT 6</title>
                <link rel="stylesheet" type="text/css" href="style.css"/>
            </head>
            <body>
                <h1> Remington Orange - Dennis - XSLT 6</h1>
                
                <!-- Granted This is horrendous looking but I'm just glad it works. I plan to change things around and maybe not do characters since almost every panel is Dennis-->
                
                <div id="table">
                    <table>
                        <tr>
                            <th>Character Name</th>
                            <th>Pages and Panels</th>
                        </tr>
                        <xsl:for-each-group select="//cbml:panel" group-by="@characters">
                            <tr>
                                <td><xsl:value-of select="normalize-space(current-grouping-key())"/></td>
                                <td>
                                    <ul>
                                        <xsl:for-each select="current-group()">
                                            <li>
                                                <a href="#{@characters}">
                                                    Page <xsl:value-of select="ancestor::div[@type='page']/@xml:id"/>
                                                </a>
               <!-- I consulted a lot of online mini forums and to be honest had to use ChatGPT to situate why it was broken-->                                 <ul>
                                                    <xsl:apply-templates select="ancestor::div[@type='page']//cbml:panel[@characters = current()/@characters]" mode="panel-toc"/>
                                                </ul>
                                            </li>
                                        </xsl:for-each>
                                    </ul>
                                </td>
                            </tr>
                        </xsl:for-each-group>
                    </table>
                </div>
              <!-- The bottom half that looks like junk for now -->   
                <div id="reading-view">
                    <xsl:apply-templates select="descendant::div[@type='page']"/>
                </div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="div[@type='page']">
        <section class="page" id="{@xml:id}">
            <xsl:apply-templates select="*"/>
        </section>
    </xsl:template>
    
    <xsl:template match="cbml:panel" mode="panel-toc">
        <li>
            <a href="#{ancestor::div[@type='page']/@xml:id}">
                Panel <xsl:value-of select="@n"/>
            </a>
        </li>
    </xsl:template>
    
    <xsl:template match="p | figDesc | note">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
</xsl:stylesheet>
