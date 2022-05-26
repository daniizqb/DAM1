<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
		  <xsl:template match="baile">
		  <xsl:if test="precio/@moneda='euro' and precio>30">
        <id><xsl:value-of select="@id"/></id>
        <profesor><xsl:value-of select="profesor"/></profesor>
		  </xsl:if>
		  </xsl:template>
		</xsl:stylesheet>