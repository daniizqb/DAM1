<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
    <html>
    <head>
    <title>XSLT Condicionales</title>
    </head>
    <body>
    <xsl:apply-templates select="ies/ciclos" />
    </body>
    </html>
    </xsl:template>

    <xsl:template match="ciclos">
    <h4>Decreto titulo de grados posterior al 2008</h4>
    <ul>
    <xsl:apply-templates select="ciclo" />
    </ul>
    </xsl:template>

    <xsl:template match="ciclo">
    <xsl:if test="decretoTitulo/@año &gt; 2008">
    <span><xsl:value-of select="decretoTitulo/@año" /></span>
    <li><xsl:value-of select="nombre"/></li>
    <li><xsl:value-of select="grado"/></li>
    </xsl:if>
    </xsl:template>
</xsl:stylesheet>
