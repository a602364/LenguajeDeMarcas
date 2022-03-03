<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet [
	<!ENTITY nbsp "&#160;">
	<!ENTITY copy "&#169;">
	<!ENTITY reg "&#174;">
	<!ENTITY trade "&#8482;">
	<!ENTITY mdash "&#8212;">
	<!ENTITY ldquo "&#8220;">
	<!ENTITY rdquo "&#8221;">
	<!ENTITY pound "&#163;">
	<!ENTITY yen "&#165;">
	<!ENTITY euro "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" />
	<xsl:template match="/">

		<html lang="en">

			<head>
				<title>Title</title>
				<!-- Required meta tags -->
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

				<!-- Bootstrap CSS -->
				<link rel="stylesheet" href="css/style.css" />
				<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
			</head>

			<body>
				<div class="container">
					<header class="text-light">
						<div class="titulo py-4">
							<xsl:for-each select="pokedex">
								<h1 class="text-center negro-transparente text-secondary mx-2 py-2">
									<strong>POKÉDEX</strong>
								</h1>
								<p class="mx-2 medio text-center">
									<xsl:value-of select="definition" />
								</p>
							</xsl:for-each>
						</div>

					</header>
					<div class="containertipos my-2">
						<xsl:for-each select="pokedex/types">
							<h1 class="text-secondary text-center">
								<strong>TYPES</strong>
							</h1>
							<div class="row mt-3 justify-content-center">
								<xsl:for-each select="type">
									<div class="col-lg-4 col-md-6 d-flex mt-3">
										<div class="card m-auto flex-fill">
											<p class="cardtexto text-center">
												<img class="card-img-top mt-3 " src="img/{.}_type.png" alt="tipo" />
												<br />
												<xsl:value-of select="." />
											</p>
										</div>
									</div>
								</xsl:for-each>
							</div>
						</xsl:for-each>
					</div>
					<div class="containerpokemon mt-5">
						<h1 class="text-secondary text-center">
							<strong>POKÉMONS</strong>
						</h1>
						<div class="row justify-content-center">
							<xsl:for-each select="pokedex/pokemon">
								<div class="col-lg-6">
									<div class="card mb-3" style="max-width: 540px;">
										<div class="row no-gutters">
											<div class="col-md-4">
												<img src="https://assets.pokemon.com/assets/cms2/img/pokedex/detail/{dex}.png" alt="dex" />
											</div>

											<div class="col-md-8">
												<div class="card-body">
													<h5 class="card-title">
														<xsl:value-of select="species" />
													</h5>
													<xsl:for-each select="baseStats">
														<p>
															HP:
															<xsl:choose >
																<xsl:when test="HP &gt; 100">
																	<span class="text-danger"><xsl:value-of select="HP" /></span>
																</xsl:when>
																<xsl:otherwise>
																	<xsl:value-of select="HP" />
																</xsl:otherwise>
															</xsl:choose >
															
															<br />
															ATK:
															<xsl:choose >
																<xsl:when test="ATK &gt; 100">
																	<span class="text-danger"><xsl:value-of select="ATK" /></span>
																</xsl:when>
																<xsl:otherwise>
																	<xsl:value-of select="ATK" />
																</xsl:otherwise>
															</xsl:choose >
															
															<br />
															DEF:
															<xsl:choose >
																<xsl:when test="DEF &gt; 100">
																	<span class="text-danger"><xsl:value-of select="DEF" /></span>
																</xsl:when>
																<xsl:otherwise>
																	<xsl:value-of select="DEF" />
																</xsl:otherwise>
															</xsl:choose >
															
															<br />
															SPD:
															<xsl:choose >
																<xsl:when test="SPD &gt; 100">
																	<span class="text-danger"><xsl:value-of select="SPD" /></span>
																</xsl:when>
																<xsl:otherwise>
																	<xsl:value-of select="SPD" />
																</xsl:otherwise>
															</xsl:choose >
															<br />
															SATK:
															<xsl:choose >
																<xsl:when test="SATK &gt; 100">
																	<span class="text-danger"><xsl:value-of select="SATK" /></span>
																</xsl:when>
																<xsl:otherwise>
																	<xsl:value-of select="SATK" />
																</xsl:otherwise>
															</xsl:choose >
															<br />
														</p>
													</xsl:for-each>
													<xsl:for-each select="types/type">
													<img src="img/{.}_type.png" alt="types" width="15%" height="25%" />
													</xsl:for-each>
												</div>
											</div>

										</div>
									</div>
								</div>
							</xsl:for-each>
						</div>

					</div>
					<footer class="">
						<h3 class="text-center text-black py-4 mt-2 mb-0">El mundo Pokémon en Azarquiel - S1DAM - S1ASIR</h3>

					</footer>
				</div>
				<!-- Optional JavaScript  -->
				<!-- jQuery first, then Popper.js, then Bootstrap JS -->
				<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
				<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
			</body>

		</html>

	</xsl:template>
</xsl:stylesheet>