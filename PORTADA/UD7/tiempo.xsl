<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h1>Tiempo</h1>
        <table border="3">
          <tr >
            <th>Día</th>
            <th>Descripcion</th>
            <th>máxima</th>
            <th>mínima</th>
          </tr>
          <xsl:for-each select="root/prediccion/dia">
          <tr>
            <td><xsl:value-of select="@fecha"/></td>
            <td><xsl:value-of select="estado_cielo/@descripcion"/></td>
            <td><xsl:value-of select="temperatura/maxima"/></td>
            <td><xsl:value-of select="temperatura/minima"/></td>
          </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>