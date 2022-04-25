<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
  <body>
  <list>
  <ol>
  <xsl:apply-templates/>  
  </ol>  
  </list>
  </body>
  </html>
  </xsl:template>

  <xsl:template match="ciclos">
  <xsl:apply-templates select="ciclo"><xsl:sort select="nombre" order="descending"/></xsl:apply-templates>
  </xsl:template>

  <xsl:template match="ciclo">
  <li><xsl:value-of select="nombre"/>(<xsl:value-of select="grado"/>)</li>
  </xsl:template>
</xsl:stylesheet>