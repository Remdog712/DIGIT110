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
                <title>Remington Orange - XSLT 5</title>
                <link rel="stylesheet" type="text/css" href="style.css"/> 
                
                
            </head>
            <body>
                <h1> Remington Orange - Sonic - XSLT 5</h1> <!-- Fixed Name YAY! I can spell! -->
                
                <div id="table">
                    
                    
                    <table>
                        <tr>
                            <th>Page</th>
                            <th>Panels</th>
                            
                            
                        </tr>
                        
                        <xsl:apply-templates select=".//div[@type='page']" mode="toc"/>
                        
                    </table>
                </div>   
                
                
                
                
                
                <div id="reading-view">
                    <xsl:apply-templates select="descendant::div[@type='page']"/>
                </div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="div[@type='page']" mode="toc">
        
        <tr>
            <td>
                Page <xsl:value-of select="@xml:id ! substring-after(.,'_')"/>
                
                
            </td>
            <td>
                <ul>
                    <xsl:apply-templates select=".//cbml:panel" mode="panel-toc"/>
                </ul>
            </td>
            
            
        </tr>
    </xsl:template>
    
    <xsl:template match="cbml:panel" mode="panel-toc">
        <li>
            <a href="#{ancestor::div[@type='page']/@xml:id}">
                
                
                Panel <xsl:value-of select="@n"/>
                
                
            </a>
        </li>
    </xsl:template>
    
    
    
    <xsl:template match="div[@type='page']">
        
        
        <section class="page" id="{@xml:id}">
            <xsl:apply-templates select="*"/>
        </section>
    </xsl:template>
    
    <xsl:template match="p | figDesc | note">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="cbml:panel">
        <div class="panel">
            <xsl:apply-templates select="*"/>
        </div>
    </xsl:template>
    
    <xsl:template match="cbml:caption">
        <p class="cbml-caption">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="cbml:balloon">
        <div class="balloon">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
</xsl:stylesheet>