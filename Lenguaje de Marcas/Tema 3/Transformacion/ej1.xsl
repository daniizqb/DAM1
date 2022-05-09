<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
    <html>
    <head>
    <title>XSLT Condicionales</title>
    </head>
    <body>
    <ul>
    <xsl:apply-templates select="ies/ciclos" />
    </ul>
    </body>
    </html>
    </xsl:template>

     <xsl:template match="ciclo">
    <xsl:if test="nombre = 'Desarrollo de Aplicaciones Web'">
    <li><xsl:value-of select="nombre"/></li>
    <li><xsl:value-of select="grado"/></li>
    <li><xsl:value-of select="decretoTitulo/@año"/></li>
    </xsl:if>
    </xsl:template>

   <xsl:template match="ciclos">
   <xsl:apply-templates select="ciclo" />
   </xsl:template>
</xsl:stylesheet>