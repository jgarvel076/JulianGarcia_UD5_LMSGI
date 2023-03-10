<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:for-each select="root/record">
            <xsl:sort select="date/year" order="ascending" data-type="number"/>
                <xsl:if test="date/year > '1789'">
                    [<xsl:value-of select="id"/>], Title: <xsl:value-of select="title"/>, Date: <xsl:value-of select="date/@when"/>
                    <xsl:text>&#xA;</xsl:text>
                </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>