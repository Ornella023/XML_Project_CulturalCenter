<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
	   <!--  We create the title  -->
    
		<!--  we appy a css style for the code  -->
        <title>list of weekend activities</title>
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
	  <!--  We create the table  -->
        <h1>list of weekend activities</h1>
        
        <!-- Tableau pour les activités programées le weekend  -->
       
        <table border="1">
          <tr>
            <th>Activity</th>
            <th>Day</th>
            <th>TimeStart</th>
            <th>Professor</th>
            <th>Room</th>
          </tr>
		  <!--  We call the route of intomation of the XLM  -->
         <xsl:for-each select="CulturalCenter/WeeklyPlanning/Activity/Activity">
		
			<xsl:variable name="day" select="Day"/>
			<!--  	we apply a condition  -->
		
			<xsl:if test="$day = 'Saturday' or $day = 'Sunday'">
			<tr>
			<!--  We detail the columns we want to appear in the table  -->
			  <td><xsl:value-of select="Type"/></td>
			  <td><xsl:value-of select="Day"/></td>
			  <td><xsl:value-of select="TimeStart"/></td>
			  <td><xsl:value-of select="Professor"/></td>
			  <td><xsl:value-of select="Room"/></td>
			</tr>
  </xsl:if>
</xsl:for-each>

        </table>
        
     
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
