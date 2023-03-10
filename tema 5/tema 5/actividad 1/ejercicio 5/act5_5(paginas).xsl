<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
            <h1>Ejemplos Plantillas</h1>
            <xsl:apply-templates/>
        </body>
    </html>
</xsl:template>
<xsl:template match="libreria">
        <h2>Mi biblioteca</h2>
            <table>
                <tr bgcolor="grey">
                    <th>isbn</th>
                    <th>titulo</th>
                    <th>autor</th>
                    <th>editor</th>
                    <th>precio</th>
                    <th>numPag</th>
                </tr>
                <xsl:apply-templates select="libro"/>
            </table>
    </xsl:template>
    <xsl:template match="libro">
            <xsl:choose>
            <xsl:when test="numPag &gt; 150">
                <tr>
                    <td bgcolor="red"><xsl:value-of select="titulo"/></td>
                    <td bgcolor="red"><xsl:value-of select="autor"/></td>
                    <td bgcolor="red"><xsl:value-of select="editor"/></td>
                    <td bgcolor="red"><xsl:value-of select="isbn"/></td>
                    <td bgcolor="red"><xsl:value-of select="precio"/></td>
                    <td bgcolor="red"><xsl:value-of select="numPag"/></td>
                </tr>
            </xsl:when>
            <xsl:when test="numPag &lt; 150">
                <tr>
                    <td bgcolor="green"><xsl:value-of select="titulo"/></td>
                    <td bgcolor="green"><xsl:value-of select="autor"/></td>
                    <td bgcolor="green"><xsl:value-of select="editor"/></td>
                    <td bgcolor="green"><xsl:value-of select="isbn"/></td>
                    <td bgcolor="green"><xsl:value-of select="precio"/></td>
                    <td bgcolor="green"><xsl:value-of select="numPag"/></td>
                </tr>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="isbn">
        <td><xsl:value-of select="."/></td>
    </xsl:template>

    <xsl:template match="titulo">
        <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="autor">
        <td><xsl:value-of select="."/></td>
    </xsl:template>

    <xsl:template match="editor">
        <td><xsl:value-of select="."/></td>
    </xsl:template>

    <xsl:template match="precio">
        <td><xsl:value-of select="."/></td>
    </xsl:template>

    <xsl:template match="numPag">
        <td><xsl:value-of select="."/></td>
    </xsl:template>
</xsl:stylesheet>