<?xml version="1.0" encoding="UTF-8" ?> 

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" version="4.0" />

	<xsl:template match="/">
		<head>
			<title>FanaTix</title>
		</head>
		<body>
			<p id="Ttitle">Summary of Sales of Seats</p>
							
				<table border="1" width="100%" background="black">
					<tr>
						<th id="txtlabel">Type</th>
						<th id="txtlabel">Price</th>
						<th id="txtlabel">Amount</th>
						<th id="txtlabel">Total</th>
					</tr>
					<xsl:for-each select="prices/price">
					<tr>
						<td id="txtlabel2"><xsl:value-of select="@type"/></td>
						<td id="txtlabel2"><xsl:value-of select="pe"/></td>
						<td id="txtlabel2"><xsl:value-of select="totalseats"/></td>
						<td id="txtlabel2"><xsl:value-of select="pe *totalseats"/></td>				
					</tr>
					</xsl:for-each>
				</table>
					
		</body>
	</xsl:template>
	
</xsl:stylesheet>