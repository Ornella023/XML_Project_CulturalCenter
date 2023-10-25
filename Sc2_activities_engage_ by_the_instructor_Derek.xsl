<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
	   <!--  We create the title  -->
   
		<!--  we appy a css style for the code  -->
        <title>activities engaged by the instructor : Derek</title>
        <style>
          /* Animation de couleur pour les cellules du tableau */
          table {
            border-collapse: collapse;
          }

          tr:hover td {
            transition: background-color 0.3s ease-in-out;
            background-color: lightblue;
          }

          th {
            background-color: #007bff;
            color: white;
          }
        </style>
      </head>
      <body>
        <h1>activities engaged by the instructor : Derek</h1>
        
    <!--  We create the table  -->
        <table border="1">
          <tr>
		     <th>Professor</th>
            <th>Activity</th>
            <th>Day</th>
            <th>TimeStart</th>
            <th>TimeEnd</th>
            <th>Room</th>
          </tr>
		  <!--  We call the route of intomation of the XLM  -->
         <xsl:for-each select="CulturalCenter/WeeklyPlanning/Activity/Activity">
			<xsl:variable name="Prof" select="Professor"/>
			<xsl:if test="$Prof = 'Derek'">
			<tr>
			<!--  We detail the columns we want to appear in the table  -->
			  <td><xsl:value-of select="Professor"/></td>
			  <td><xsl:value-of select="Type"/></td>
			  <td><xsl:value-of select="Day"/></td>
			  <td><xsl:value-of select="TimeStart"/></td>
			  <td><xsl:value-of select="TimeEnd"/></td>
			  
			  <td><xsl:value-of select="Room"/></td>
			</tr>
  </xsl:if>
</xsl:for-each>

        </table>
        
     
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
