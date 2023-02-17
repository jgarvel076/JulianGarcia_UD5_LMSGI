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
<xsl:template>
    <xsl:template match="libreria">
        <h2>Mi biblioteca</h2>
            <table>
                <th>Titulo</th>
                <th>Autor</th>
                <th>editor</th>
                <th>isbn</th>
                <th>precio</th>
                <th>numPag</th>
            </table>
    </xsl:template>
    <xsl:template>
    <xsl:template match="libro">
        <h2>Mi biblioteca</h2>
            <table>
                <th>Titulo</th>
                <th>Autor</th>
                <th>editor</th>
                <th>isbn</th>
                <th>precio</th>
                <th>numPag</th>
            </table>
    </xsl:template>
</xsl:template>
</xsl:stylesheet>
