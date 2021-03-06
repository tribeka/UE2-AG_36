<%-- 
    Document   : register
    Created on : Mar 30, 2012, 12:16:30 PM
    Author     : bernhard
--%>

<%@page contentType="application/xhtml+xml" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
    "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"  xml:lang="de" lang="de">
	<head>
		<title>EWA Mensch &auml;rgere Dich nicht :: Spiel 1</title>
		<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8"/>
		<meta name="description" content="Das EWA Mensch &auml;rgere Dich nicht Memory, ein Spass der niemals endet."/>
		<meta name="keywords" content="Spiel EWA memory"/>
		<meta name="language" content="de-AT"/>
		<link rel="stylesheet" type="text/css" href="styles/screen.css"/>
	</head>
	<body>
		<div id="wrapper">
			<div id="header">
				<div id="teaser"></div>
				<div id="logo"></div>
				<h1>EWA Memory</h1>
			</div>
			<ul class="accessibility">
				<li><a href="#navigation" accesskey="1">Navigation</a></li>
				<li><a href="#main" accesskey="0">Registrierungs-Formular</a></li>
			</ul>
			<div id="body">
				<div id="navigation">
					<h2 class="accessibility">Navigation</h2>
					<ul>
						<li><a href="#">Zur&uuml;ck zur Lounge</a></li>
						<li><a href="#">Einloggen</a></li>
					</ul>
				</div>
				<hr class="accessibility" />
				<div id="main">
					<h2>Registrieren</h2>
					<p>Bitte f&uuml;llen Sie das untenstehende Formular aus!</p>
				
					<form action="#" method="post" id="sendeRegistrierung">
					<h3>Pers&ouml;nliche Daten</h3>

					<div class="formblock">
					<fieldset>
						<div>
				                        <label class="Float" for="firstname">Vorname</label>
	                			        <input type="text" id="firstname" name="firstname" />
						</div>
						<div>
							<label class="Float" for="lastname">Nachname</label>
							<input type="text" id="lastname" name="lastname" />
						</div>
						<div>
							<label class="Float" for="dateofbirth">Geburtsdatum</label>
							<input type="text" id="dateofbirth" name="dateofbirth" />
						</div>
						<div>
					                <label class="Float" for="sex">Geschlecht</label>
					                <select id="sex" name="sex">
					                    <option value="w">weiblich</option>
					                    <option value="m">m&auml;nnlich</option>
					                </select>
						</div>
					</fieldset>
					</div>

					<h3><span xml:lang="en">Login</span> Daten </h3>
					<div class="formblock">
						<fieldset>
							<div>
								<label class="Float" for="username">Username</label>
								<input type="text" id="username" name="username" />
							</div>

							<div>
								<label class="Float" for="password">Passwort</label>
								<input type="password" id="password" name="password" />
							</div>
						</fieldset>
					</div>
					<div id="buttons">
						<input type="submit" value="Registrieren" accesskey="r" />
					</div>
					</form>



				</div>
			</div>
			<div id="footer">
				<p>&copy; 2012 EWA Mensch &auml;rgere Dich nicht.</p>
			</div>
		</div>
	</body>
</html>
