<!-- Scenario 5: List of proffesors for activities and their contact information-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
<!-- We create the title -->
      <head>
        <title>Professors Contact List</title>
      </head>
      <body>
        <h1>Professors Contact List</h1>
        <table>
<!-- We create the table -->
          <tr>
            <th>Name</th>
            <th>Discipline</th>
            <th>Email</th>
            <th>Phone</th>
          </tr>
<!-- We call the route of intomation of the XLM -->
          <xsl:for-each select="CulturalCenter/Administration/Professors/Professor">
            <tr>
<!-- We detail the columns we want to appear in the table -->
              <td><xsl:value-of select="Name" /></td>
              <td><xsl:value-of select="Discipline" /></td>
              <td><xsl:value-of select="ContactDetails/Email" /></td>
              <td><xsl:value-of select="ContactDetails/PhoneNumber" /></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
