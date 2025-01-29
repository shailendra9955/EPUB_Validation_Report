<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:strip-space elements="description"/>
  <xsl:template match="resultsResponse/submittedbook">
    <html>
      <body>
        <h2 style="color:blue">Epub Validation-Report</h2>
        <table border="1" style="width:1550px">
          <tr style="background-color:lightyellow;fonts-size:120%;">
            <td><b>ePub Validation Report (<xsl:value-of select="startTime"/>)</b></td>
          </tr>
            <tr style="background-color:lightgrey;fonts-size:120%;">
              <td><b>Component: <xsl:value-of select="bookName"/></b> <xsl:text>&#x00A0;&#x00A0;&#x00A0;&#x00A0;</xsl:text>(<xsl:value-of select="count(result/severity[text() = 'Error'])"/> Errors) <xsl:text>&#x00A0;&#x00A0;&#x00A0;&#x00A0;</xsl:text>(<xsl:value-of select="count(result/severity[text() = 'Warning'])"/> Warnings)</td>
          </tr>
        </table>
<xsl:element name="p"></xsl:element>
        <table border="1">
<!--          <tr bgcolor="lightyellow">
            <xsl:element name="th"/>
            <xsl:elemenet name="th"><xsl:attribute name="style"><xsl:text>text-align:center</xsl:text></xsl:attribute><xsl:text>Types of Check</xsl:text></xsl:elemenet>
            <xsl:elemenet name="th"><xsl:attribute name="style"><xsl:text>text-align:center</xsl:text></xsl:attribute><xsl:text>Info Types</xsl:text></xsl:elemenet>
            <xsl:elemenet name="th"><xsl:attribute name="style"><xsl:text>text-align:center</xsl:text></xsl:attribute><xsl:text>Line</xsl:text></xsl:elemenet>
            <xsl:elemenet name="th"><xsl:attribute name="style"><xsl:text>text-align:center</xsl:text></xsl:attribute><xsl:text>Location</xsl:text></xsl:elemenet>
            <xsl:elemenet name="th"><xsl:attribute name="style"><xsl:text>text-align:center</xsl:text></xsl:attribute><xsl:text>Description</xsl:text></xsl:elemenet>
          </tr>
-->
          <tr bgcolor="lightyellow">
            <th/>
            <th style="text-align:center">Types of Check</th>
            <th style="text-align:center">Info Types</th>
            <th style="text-align:center">Line</th>
            <th style="text-align:center">Location</th>
            <th style="text-align:center">Description</th>
          </tr>
          <xsl:for-each select="result">
            <tr>
              <td>
                <xsl:choose>
                  <xsl:when test="severity = 'Error'">
                    <img src="C:\Users\skchauhan\Desktop\XML_Learn\icons\error.jpg"/>
                  </xsl:when>
                  <xsl:when test="severity = 'Warning'">
                    <img src="C:\Users\skchauhan\Desktop\XML_Learn\icons\warning.jpg"/>
                  </xsl:when>
                  <xsl:when test="severity = 'Info'">
                    <img src="C:\Users\skchauhan\Desktop\XML_Learn\icons\note.jpg"/>
                  </xsl:when>
                  <xsl:when test="severity = 'Exception'">
                    <img src="C:\Users\skchauhan\Desktop\XML_Learn\icons\exception.jpg"/>
                  </xsl:when>
                  <xsl:when test="severity = 'Malfunction'">
                    <img src="C:\Users\skchauhan\Desktop\XML_Learn\icons\malfunction.jpg"/>
                  </xsl:when>
                  <xsl:when test="severity = 'Success'">
                    <img src="C:\Users\skchauhan\Desktop\XML_Learn\icons\success.jpg"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <span style="background-color:lightblue">
                      <xsl:value-of select="severity"/>
                    </span>
                  </xsl:otherwise>
                </xsl:choose>
              </td>
              <td>
                <xsl:value-of select="engine"/>
              </td>
              <td style="text-align:center">
                <xsl:choose>
                  <xsl:when test="severity = 'Error'">
                    <font color="black">
                      <span style="background-color:light-red">&#x00A0;<xsl:value-of
                          select="severity"/>&#x00A0;</span>
                    </font>
                  </xsl:when>
                  <xsl:when test="severity = 'Info'">
                    <xsl:text/>
                  </xsl:when>
                  <xsl:when test="severity = 'Success'">
                    <xsl:text/>
                  </xsl:when>
                  <xsl:when test="severity = 'Warning'"><xsl:text>Warning</xsl:text></xsl:when>
                  <xsl:otherwise>
                    <span style="background-color:lightblue">
                      <xsl:value-of select="severity"/>
                    </span>
                  </xsl:otherwise>
                </xsl:choose>
              </td>
              <td style="text-align:center">
                <xsl:value-of select="line"/>
              </td>
              <td>
                <xsl:value-of select="location"/>
              </td>
              <td>
                <xsl:value-of select="description"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        <xsl:element name="p"/>
        <table border="1">
          <tr style="background-color:lightyellow">
            <th colspan="4" align="left">Icon Legend</th>
          </tr>
          <tr>
            <td><b>Success</b></td>
            <td><b>Critical</b></td>
            <td><b>Non-Critical</b></td>
            <td><b>System</b></td>
          </tr>
          <tr>
            <td align="justify"><img src="C:\Users\skchauhan\Desktop\XML_Learn\icons\success.jpg"/> = Success</td>
            <td><img src="C:\Users\skchauhan\Desktop\XML_Learn\icons\error.jpg"/> = Error<br/><img src="C:\Users\skchauhan\Desktop\XML_Learn\icons\exception.jpg"/> = Exception</td>
            <td><img src="C:\Users\skchauhan\Desktop\XML_Learn\icons\warning.jpg"/> = Warning<br/><img src="C:\Users\skchauhan\Desktop\XML_Learn\icons\note.jpg"/> = Note</td>
            <td><img src="C:\Users\skchauhan\Desktop\XML_Learn\icons\malfunction.jpg"/> = Malfunction</td>
          </tr>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
