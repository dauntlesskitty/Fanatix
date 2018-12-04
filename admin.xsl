<?xml version="1.0" encoding="UTF-8" ?> 

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" version="4.0" />

	<xsl:template match="/">
		<head>
			<center><title>FanaTix Admin</title></center>
			<style>
				body { font-family: 'Trebuchet MS'; }
			</style>
		</head>
		<body>
			<center><p id="Ttitle">FanaTix Admin Profile</p></center>

			<xsl:apply-templates select="admins/admin[@adminID='AD001']"/>
					
		</body>
	</xsl:template>
	
	<xsl:template match="admin">
		<center><div id="bgpic"><xsl:apply-templates select="imageURL"/></div></center>
		<div id="profiledisplay">
			<!-- <div id="centercenter"> -->
				<table width="100%" background="black">
					<tr>
						<td id="txtlabel">Name&#160;</td>
						<td id="txtlabel2"><xsl:apply-templates select="name"/></td>
					</tr>
					<tr>
						<td id="txtlabel">Password&#160;</td>
						<td id="txtlabel2"><xsl:apply-templates select="password"/></td>
					</tr>
					<tr>
						<td id="txtlabel">Email&#160;</td>
						<td id="txtlabel2"><xsl:apply-templates select="email"/></td>
					</tr>
					<tr>
						<td id="txtlabel">Phone&#160;</td>
						<td id="txtlabel2"><xsl:apply-templates select="phone"/></td>
					</tr>
				</table>
			<!-- </div> -->
		</div>
	</xsl:template>

	<xsl:template match="imageURL">
		<center><img style="width: 180px; height: 170px"  src="{.}"/></center><br/>
	</xsl:template>

	<xsl:template match="name">
        <xsl:value-of select="."/>
	</xsl:template>

	<xsl:template match="password">
        <xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="email">         
		<xsl:value-of select="."/>
	</xsl:template>

	<xsl:template match="phone">
		<xsl:value-of select="."/>
	</xsl:template>

</xsl:stylesheet>