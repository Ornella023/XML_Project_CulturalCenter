<!--  Scenario 1: list of activities and Events -->


<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
	  <!--  We create the title  -->
        <title>Activities and Events</title>
		<!--  we appy a css style for the code  -->
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
        <h1>Activities and Events</h1>
        
        <!-- Tableau pour les activités -->
        <h2>Activities</h2>
		
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
            <tr>
			<!--  We detail the columns we want to appear in the table  -->
              <td><xsl:value-of select="Type"/></td>
              <td><xsl:value-of select="Day"/></td>
              <td><xsl:value-of select="TimeStart"/></td>
              <td><xsl:value-of select="Professor"/></td>
              <td><xsl:value-of select="Room"/></td>
            </tr>
          </xsl:for-each>
        </table>
     
        <!-- Tableau pour les événements -->
        <h2>Events</h2>
	
        <table border="1">
          <tr>
            <th>Event Name</th>
            <th>Day</th>
            <th>TimeStart</th>
            <th>Performer</th>
            <th>Room</th>
          </tr>
          <xsl:for-each select="CulturalCenter/WeeklyPlanning/Event/Event">
            <tr>
              <td><xsl:value-of select="EventName"/></td>
              <td><xsl:value-of select="Day"/></td>
              <td><xsl:value-of select="TimeStart"/></td>
              <td><xsl:value-of select="Performer"/></td>
              <td><xsl:value-of select="Room"/></td>
            </tr>
          </xsl:for-each>
        </table>
	
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
