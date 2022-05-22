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

<xsl:template match="ciclo">
    <xsl:variable name="var">Superior</xsl:variable>
    <xsl:if test="grado=$var">
    <p><xsl:value-of select="nombre"/></p>
    </xsl:if>
    </xsl:template>

    <xsl:template match="ciclos">
    <xsl:apply-templates select="ciclo" />
    </xsl:template>

</xsl:stylesheet>
