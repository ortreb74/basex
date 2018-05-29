<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs"
  version="2.0">
  
  <xsl:template match = "/*">
    <xsl:copy>      
      <xsl:copy-of select = "@*"/>
      <xsl:attribute name = "id" select = "concat(@id,'-sort')"></xsl:attribute>
      <xsl:copy-of select="metadonnees"/>
      <xsl:for-each select = "//table">
        <xsl:sort select="string-join(*/name(),'-')"></xsl:sort>
        <xsl:variable name = "table" select = "."/>
        <ua>        
          <titreUa><xsl:value-of select="string-join(*/name(),'-')"/></titreUa>        
           <docNiv class="docNivToc" contentDisplay="skip" id="table-{position()}" tocDisplay="visible">
             <titre><xsl:value-of select = "ancestor::ua/titreUa"/>  </titre>
             <xsl:apply-templates select = "ancestor::ua/docNiv">
               <xsl:with-param name = "table" tunnel="yes" select = "$table"/>
             </xsl:apply-templates>
           </docNiv>
        </ua>
      </xsl:for-each>
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="*[ancestor::ua]">
    <xsl:param name="table" tunnel = "yes"/>
    <xsl:copy>
      <xsl:copy-of select="@*"/>
      <xsl:apply-templates>
        <xsl:with-param name = "table" tunnel="yes" select = "$table"/>
      </xsl:apply-templates>      
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="table" priority = "1">    
    <xsl:param name="table" tunnel = "yes"/>
    <xsl:if test = ". = $table">
      <xsl:copy-of select = "."/>
    </xsl:if>
  </xsl:template>  
  
  <xsl:template match="node() | @*">
    <xsl:copy>
      <xsl:apply-templates select="node() | @*"/>
    </xsl:copy>
  </xsl:template>
  
</xsl:stylesheet>