<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="4.0" />
	<!-- Root -->
	<xsl:template match="/">
		<html>
			<head>
				<title>Events</title>
				<script>
				function myFunction() {
					alert("I am an alert box!");
				}
				
				var modal = document.getElementById('myModal');

				var btn = document.getElementById("myBtn");

				var span = document.getElementsByClassName("close")[0];

				btn.onclick = function() {
					modal.style.display = "block";
				}

				span.onclick = function() {
					modal.style.display = "none";
				}

				window.onclick = function(event) {
					if (event.target == modal) {
						modal.style.display = "none";
					}
				}
			</script>
			</head>
			<body>
			
				<xsl:apply-templates select="concerts/concert">
					<!-- <xsl:sort select="date" data-type="date" order="ascending"/>	 -->
				</xsl:apply-templates>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="concert">
		<div id="concertLayout">
			<h2 id="EVENTtitle"><xsl:apply-templates select="event-name"/></h2>
			<p id="Genre"><xsl:apply-templates select="genre"/></p>
			<p><img style="width: 300px; height: 400px" src="{@cID}.jpg"/></p>
			<p>Artist : <xsl:apply-templates select="artist"/></p>
			<p>Date : <xsl:apply-templates select="date"/></p>
			<p>Time : <xsl:apply-templates select="start"/>-<xsl:apply-templates select="end"/></p>
			<p>Organize By:<xsl:apply-templates select="organizer"/></p>
			<p><xsl:apply-templates select="description"/></p>
				
			<br/><br/><br/><br/><br/><br/><br/>

			<a  id="myBtn" class="button1 bouncy">Show Seating Chart</a>
			<a href="buytix.html" class="button2 bouncy" style="animation-delay:0.07s">Buy Now!</a>
		</div>
	</xsl:template>
	
</xsl:stylesheet>