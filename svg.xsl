<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html lang="en">
      <head>
        <title>SVG</title>
      </head>
      <body>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="графика">
    <svg width="{@ширина}" height="{@высота}">
      <xsl:apply-templates/>
    </svg>
  </xsl:template>
  <xsl:template match="эллипс">
    <ellipse id="{@id}" fill="{@заливка}" stroke="{@ободок}" stroke-width="{@ширина-ободок}" cx="{@cx}" cy="{@cy}" ry="{@ry}">
      <xsl:apply-templates/>
    </ellipse>
  </xsl:template>
</xsl:stylesheet>
