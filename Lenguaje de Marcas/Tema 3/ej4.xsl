<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
    <head>
    <title>XSLT Variables</title>
    </head>
    <body>
    <xsl:apply-templates select="ies/ciclos" />
    </body>
    </html>
    </xsl:template>

<xsl:template match="ciclos">
    <xsl:apply-templates select="ciclo" />
    </xsl:template>

<xsl:template match="ciclo">
      <xsl:variable name="var"><xsl:value-of select="@id"/></xsl:variable>
      <p><xsl:value-of select="nombre"/></p>
      <ul>
        <li><xsl:value-of select="grado"/></li>
        <xsl:for-each select="/ies/caracteristicas">
          <xsl:if test="@id_c=$var">
            <li><xsl:value-of select="precio"/></li>
            <li><xsl:value-of select="nota_media"/></li>
            <li><xsl:value-of select="horas"/></li>
          </xsl:if>
        </xsl:for-each>
      </ul>
    </xsl:template>
</xsl:stylesheet>