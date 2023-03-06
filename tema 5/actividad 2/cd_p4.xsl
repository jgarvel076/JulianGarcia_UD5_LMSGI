<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
    <h1>Lista de CD</h1>
        <table>
            <tr bgcolor="blue">
                <th>titulo del album</th>
                <th>artista</th>
                <th>canciones</th>
                <th>sello discografico</th>
                <th>anyo publicacion</th>
            </tr>
            <xsl:for-each select="lista/CD">
                <tr>
                    <td><xsl:value-of select="titulodealbum"/></td>
                    <td><xsl:value-of select="artista"/></td>
                    <td>
                        <ul>
                            <xsl:for-each select="canciones/cancion[@tiempo &lt; 180]">
                                <li>
                                    <xsl:value-of select="."/>
                                    <xsl:value-of select="@duracion"/>
                                </li>
                            </xsl:for-each>
                        </ul>
                    </td>
                    <td><xsl:value-of select="sellodiscografico"/></td>
                    <td><xsl:value-of select="anopublicacion"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>