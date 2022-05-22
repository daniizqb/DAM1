<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
  <body>
  <table>
  <xsl:attribute name="border">1px solid black  </xsl:attribute>
  <tr>
    <th>Nombre</th>
    <th>Grado</th>
  </tr>
  <xsl:apply-templates/>
</table>
  </body>
  </html>
  </xsl:template>

  <xsl:template match="ciclo">
  <tr>
  <td><xsl:value-of select="nombre"/></td>
  <td><xsl:value-of select="grado"/></td>
  </tr>
  </xsl:template>
</xsl:stylesheet>