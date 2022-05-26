<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
<html>
  <body>
    <table border="1px solid black" style="border-collapse: collapse; width: 60%; text-align: center;"><tr style="background-color: lightgrey;"><th>ID</th><th>NOMBRE</th><th>PRECIO</th><th>COMIENZO</th><th>FIN</th><th>PROFESOR</th></tr>
    <xsl:apply-templates/>
    </table>
  </body>
</html>
    </xsl:template>

<xsl:template match="bailes">
    <xsl:apply-templates select="baile"><xsl:sort select="nombre" order="ascending"/></xsl:apply-templates>
    </xsl:template>

<xsl:template match="baile">
    <xsl:if test="precio/@cuota='mensual'">
      <tr><td><xsl:value-of select="@id"/></td><td><xsl:value-of select="nombre"/></td><td><xsl:value-of select="precio"/></td><td><xsl:value-of select="comienzo"/></td><td><xsl:value-of select="fin"/></td><td><xsl:value-of select="profesor"/></td></tr>
    </xsl:if>    
  </xsl:template>
</xsl:stylesheet>
