<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
  <body>
  <h1><b>Posiciones de Usuarios</b></h1>
    <xsl:apply-templates/>
  </body>
  </html>
  </xsl:template>

  <xsl:template match="usuario">
  <p>
    <xsl:attribute name="align">
      <xsl:value-of select="posicion"/>
    </xsl:attribute>
    <xsl:value-of select="nombre"/>
  </p>
  </xsl:template>
</xsl:stylesheet>