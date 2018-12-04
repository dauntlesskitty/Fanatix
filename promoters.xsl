<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" version="4.0" />

<xsl:template match="/">
	<html>
		<head>
			<title>FanaTix</title>
			<link href="main.css" rel="stylesheet" type="text/css" />
		</head>
		<body>
			<h1 class="promoters">List of Promoters</h1>
			<div>
				<xsl:apply-templates select="concerts/concert">
					<xsl:sort select="promoter" />
				</xsl:apply-templates>
			</div>

		</body>
	</html>
</xsl:template>

<xsl:template match="concert">
	<div>
		<table>
		<tr>
		<td><xsl:apply-templates select="promoters/promoter"/></td>
		<td><xsl:apply-templates select="event-name"/></td>
		</tr>
                </table>
	</div>
</xsl:template>

</xsl:stylesheet>