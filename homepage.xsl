<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="4.0" />
<!-- Root -->
	<xsl:template match="/">
		<html>
			<body>
			<div class="gallery">
				<h2 class="g2">K-POP</h2>
					<xsl:apply-templates select="concerts/concert[genre='K-POP']">
						<!-- <xsl:sort select="sName" /> -->
					</xsl:apply-templates>
			</div>
			<div class="gallery">
				<h2 class="g2">J-POP</h2>
					<xsl:apply-templates select="concerts/concert[genre='J-POP']">
						<!-- <xsl:sort select="sName" /> -->
					</xsl:apply-templates>
			</div>
			<div class="gallery">
				<h2 class="g2">E-POP &amp; ROCK</h2>
					<xsl:apply-templates select="concerts/concert[genre='E-POP']">
						<!-- <xsl:sort select="sName" /> -->
					</xsl:apply-templates>
			</div>
			<div class="gallery">
				<h2 class="g2">C-POP</h2>
					<xsl:apply-templates select="concerts/concert[genre='C-POP']">
						<!-- <xsl:sort select="sName" /> -->
					</xsl:apply-templates>
			</div>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="concert">
		<!-- <div class="gallery"> -->
			<p id="hpEventTitle"><xsl:apply-templates select="event-name"/></p>
			<p id="img"><img style="width: 280px; height: 290px"  src="{@cID}.jpg"/></p>
			<p id="At">Artist : <xsl:apply-templates select="artist"/></p>
			<a href="concerts.html" class="button2 bouncy" style="animation-delay:0.07s">See More Details</a>
		<!-- </div> -->
	</xsl:template>
	
</xsl:stylesheet>