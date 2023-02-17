<?xml version="1.0" encoding="ISO-8859-1"?>
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
                <tr>
                    <th>isbn</th>
                    <th>titulo</th>
                    <th>autor</th>
                    <th>editor</th>
                    <th>precio</th>
                    <th>numPag</th>
                </tr>
                <xsl.apply-templates select="libro"/>
            </table>
    </xsl:template>
    <xsl:template match="libro">
            <tr>
                <td><xsl:apply-templates match="titulo"/></td>
                <td><xsl:apply-templates match="autor"/></td>
                <td><xsl:apply-templates match="editor"/></td>
                <td><xsl:apply-templates match="isbn"/></td>
                <td><xsl:apply-templates match="precio"/></td>
                <td><xsl:apply-templates match="numPag"/></td>
            </tr>
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
