<%@page contentType="application/xhtml+xml" pageEncoding="UTF-8"%>
<jsp:useBean id="spielfeld" class="model.Spielfeld" scope="session" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
    "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"  xml:lang="de" lang="de">
	<head>
		<title>EWA Mensch &auml;rgere Dich nicht :: Spiel 1</title>
		<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=iso-8859-1"/>
		<meta name="description" content="Das EWA Mensch &auml;rgere Dich nicht, ein Spa&szlig; der niemals endet."/>
		<meta name="keywords" content="Spiel EWA Mensch &auml;rgere Dich nicht"/>
		<meta name="language" content="de-AT"/>
		<link rel="stylesheet" type="text/css" href="styles/screen.css"/>
                                    
	</head>
	<body>
		<div id="wrapper">
			<div id="header">
				<div id="teaser"></div>
				<div id="logo"></div>
				<h1>EWA Mensch &auml;rgere Dich nicht</h1>
			</div>
			<ul class="accessibility">
				<li><a href="#navigation" accesskey="2">Navigation</a></li>
				<li><a href="#board" accesskey="0">Spielbrett</a></li>
				<li><a href="#dicearea" accesskey="1">W&uuml;rfel</a></li>
				<li><a href="#info_area" accesskey="3">Spielstand</a></li>
			</ul>
			<div id="body">
				<div id="navigation">
					<h2 class="accessibility">Navigation</h2>
					<ul>
						<li><a href="#">Userdaten &auml;ndern</a></li>
						<li><a href="#">Zur&uuml;ck zur Lounge</a></li>
						<li><a href="#">Ausloggen</a></li>
					</ul>
				</div>
				<hr class="accessibility" />				
				<div id="info_area">
					<h2>Spielinformationen</h2>
					<table class="game_info" summary="Diese Tabelle zeigt Informationen zum aktuellen Spiel">
						<tbody>
							<tr class="accessibility">
								<th>Information</th>
								<th>Wert</th>
							</tr>
							<tr>
								<th>Anzahl Spieler</th>
								<td><%= spielfeld.getcntPlayer() %></td>
							</tr>
							<tr>
								<th>F&uuml;hrender</th>
								<td>mehrere</td>
							</tr>
							<tr>
								<th>Aktuelle Runde</th>
								<td><%= spielfeld.getRound() %></td>
							</tr>
							<tr>
								<th>Zeit</th>
								<td><%= spielfeld.getTime() %></td>
							</tr>
						</tbody>
					</table>
					<h2>Spieler</h2>
					<table class="game_info" summary="Diese Tabelle listet die Namen der Spieler auf">
						<tbody>
							<tr class="accessibility">
								<th>Spielernummer</th>
								<th>Spielername</th>
							</tr>
							<tr>
								<th>Spieler 1</th>
								<td><%= /*spielfeld.Player[0].getName()*/ "Spieler1" %></td>
							</tr>
							<tr>
								<th>Spieler 2</th>
								<td><%= /* spielfeld.Player[1].getName()*/ "Spieler2" %></td>
							</tr>
							<tr>
								<th>Spieler 3</th>
								<td><%= /* spielfeld.Player[2].getName()*/ "Spieler3" %></td>
							</tr>
							<tr>
								<th>Spieler 4</th>
								<td><%= /* spielfeld.Player[3].getName()*/ "Spieler4" %></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="dicearea">
					<hr class="accessibility" />
					<h2 class="accessibility">W&uuml;rfel</h2>
					<span title='aktueller Spieler'>Super Mario</span>
					<img name="wuerfel" title="W&uuml;rfel Zahl 1" src="img/wuerfel1.png" alt="W&uuml;rfel Zahl 1"/>
				</div>
				<div id="play_area">
					<hr class="accessibility" />
					<div id="board">
						<h2 class="accessibility">Spielbrett</h2>
						<div class="fields">
							<h3 class="accessibility">Spielfelder</h3>
							<ol title="Spielfelder">
								<li><img id='field1' src='img/field1<%= spielfeld.getPlayareaImage(0) %>.png' alt='Feld 1: erstes Feld Spieler 1<%= spielfeld.getPlayareaText(0) %>' title='Feld 1: erstes Feld Spieler 1<%= spielfeld.getPlayareaText(0) %>' /></li>									
								<li><img id='field2' src='img/field<%= spielfeld.getPlayareaImage(1) %>.png' alt='Feld 2<%= spielfeld.getPlayareaText(1) %>' title='Feld 2<%= spielfeld.getPlayareaText(1) %>' /></li>
								<li><img id='field3' src='img/field<%= spielfeld.getPlayareaImage(2) %>.png' alt='Feld 3<%= spielfeld.getPlayareaText(2) %>' title='Feld 3<%= spielfeld.getPlayareaText(2) %>' /></li>
								<li><img id='field4' src='img/field<%= spielfeld.getPlayareaImage(3) %>.png' alt='Feld 4<%= spielfeld.getPlayareaText(3) %>' title='Feld 4<%= spielfeld.getPlayareaText(3) %>' /></li>
								<li><img id='field5' src='img/field<%= spielfeld.getPlayareaImage(4) %>.png' alt='Feld 5<%= spielfeld.getPlayareaText(4) %>' title='Feld 5<%= spielfeld.getPlayareaText(4) %>' /></li>
								<li><img id='field6' src='img/field<%= spielfeld.getPlayareaImage(5) %>.png' alt='Feld 6<%= spielfeld.getPlayareaText(5) %>' title='Feld 6<%= spielfeld.getPlayareaText(5) %>' /></li>
								<li><img id='field7' src='img/field<%= spielfeld.getPlayareaImage(6) %>.png' alt='Feld 7<%= spielfeld.getPlayareaText(6) %>' title='Feld 7<%= spielfeld.getPlayareaText(6) %>' /></li>
								<li><img id='field8' src='img/field<%= spielfeld.getPlayareaImage(7) %>.png' alt='Feld 8<%= spielfeld.getPlayareaText(7) %>' title='Feld 8<%= spielfeld.getPlayareaText(7) %>' /></li>
								<li><img id='field9' src='img/field<%= spielfeld.getPlayareaImage(8) %>.png' alt='Feld 9<%= spielfeld.getPlayareaText(8) %>' title='Feld 9<%= spielfeld.getPlayareaText(8) %>' /></li>
								<li><img id='field10' src='img/field<%= spielfeld.getPlayareaImage(9) %>.png' alt='Feld 10: letztes Feld Spieler 2<%= spielfeld.getPlayareaText(9) %>' title='Feld 10: letztes Feld Spieler 2<%= spielfeld.getPlayareaText(9) %>' /></li>
								<li><img id='field11' src='img/field2<%= spielfeld.getPlayareaImage(10) %>.png' alt='Feld 11: erstes Feld Spieler 2<%= spielfeld.getPlayareaText(10) %>' title='Feld 11: erstes Feld Spieler 2<%= spielfeld.getPlayareaText(10) %>' /></li>
								<li><img id='field12' src='img/field<%= spielfeld.getPlayareaImage(11) %>.png' alt='Feld 12<%= spielfeld.getPlayareaText(11) %>' title='Feld 12<%= spielfeld.getPlayareaText(11) %>' /></li>
								<li><img id='field13' src='img/field<%= spielfeld.getPlayareaImage(12) %>.png' alt='Feld 13<%= spielfeld.getPlayareaText(12) %>' title='Feld 13<%= spielfeld.getPlayareaText(12) %>' /></li>
								<li><img id='field14' src='img/field<%= spielfeld.getPlayareaImage(13) %>.png' alt='Feld 14<%= spielfeld.getPlayareaText(13) %>' title='Feld 14<%= spielfeld.getPlayareaText(13) %>' /></li>
								<li><img id='field15' src='img/field<%= spielfeld.getPlayareaImage(14) %>.png' alt='Feld 15<%= spielfeld.getPlayareaText(14) %>' title='Feld 15<%= spielfeld.getPlayareaText(14) %>' /></li>
								<li><img id='field16' src='img/field<%= spielfeld.getPlayareaImage(15) %>.png' alt='Feld 16<%= spielfeld.getPlayareaText(15) %>' title='Feld 16<%= spielfeld.getPlayareaText(15) %>' /></li>
								<li><img id='field17' src='img/field<%= spielfeld.getPlayareaImage(16) %>.png' alt='Feld 17<%= spielfeld.getPlayareaText(16) %>' title='Feld 17<%= spielfeld.getPlayareaText(16) %>' /></li>
								<li><img id='field18' src='img/field<%= spielfeld.getPlayareaImage(17) %>.png' alt='Feld 18<%= spielfeld.getPlayareaText(17) %>' title='Feld 18<%= spielfeld.getPlayareaText(17) %>' /></li>
								<li><img id='field19' src='img/field<%= spielfeld.getPlayareaImage(18) %>.png' alt='Feld 19<%= spielfeld.getPlayareaText(18) %>' title='Feld 19<%= spielfeld.getPlayareaText(18) %>' /></li>
								<li><img id='field20' src='img/field<%= spielfeld.getPlayareaImage(19) %>.png' alt='Feld 20: letztes Feld Spieler 3<%= spielfeld.getPlayareaText(19) %>' title='Feld 20: letztes Feld Spieler 3<%= spielfeld.getPlayareaText(19) %>' /></li>
								<li><img id='field21' src='img/field3<%= spielfeld.getPlayareaImage(20) %>.png' alt='Feld 21: erstes Feld Spieler 3<%= spielfeld.getPlayareaText(20) %>' title='Feld 21: erstes Feld Spieler 3<%= spielfeld.getPlayareaText(20) %>' /></li>
								<li><img id='field22' src='img/field<%= spielfeld.getPlayareaImage(21) %>.png' alt='Feld 22<%= spielfeld.getPlayareaText(21) %>' title='Feld 22<%= spielfeld.getPlayareaText(21) %>' /></li>
								<li><img id='field23' src='img/field<%= spielfeld.getPlayareaImage(22) %>.png' alt='Feld 23<%= spielfeld.getPlayareaText(22) %>' title='Feld 23<%= spielfeld.getPlayareaText(22) %>' /></li>
								<li><img id='field24' src='img/field<%= spielfeld.getPlayareaImage(23) %>.png' alt='Feld 24<%= spielfeld.getPlayareaText(23) %>' title='Feld 24<%= spielfeld.getPlayareaText(23) %>' /></li>
								<li><img id='field25' src='img/field<%= spielfeld.getPlayareaImage(24) %>.png' alt='Feld 25<%= spielfeld.getPlayareaText(24) %>' title='Feld 25<%= spielfeld.getPlayareaText(24) %>' /></li>
								<li><img id='field26' src='img/field<%= spielfeld.getPlayareaImage(25) %>.png' alt='Feld 26<%= spielfeld.getPlayareaText(25) %>' title='Feld 26<%= spielfeld.getPlayareaText(25) %>' /></li>
								<li><img id='field27' src='img/field<%= spielfeld.getPlayareaImage(26) %>.png' alt='Feld 27<%= spielfeld.getPlayareaText(26) %>' title='Feld 27<%= spielfeld.getPlayareaText(26) %>' /></li>
								<li><img id='field28' src='img/field<%= spielfeld.getPlayareaImage(27) %>.png' alt='Feld 28<%= spielfeld.getPlayareaText(27) %>' title='Feld 28<%= spielfeld.getPlayareaText(27) %>' /></li>
								<li><img id='field29' src='img/field<%= spielfeld.getPlayareaImage(28) %>.png' alt='Feld 29<%= spielfeld.getPlayareaText(28) %>' title='Feld 29<%= spielfeld.getPlayareaText(28) %>' /></li>
								<li><img id='field30' src='img/field<%= spielfeld.getPlayareaImage(29) %>.png' alt='Feld 30: letztes Feld Spieler 4<%= spielfeld.getPlayareaText(29) %>' title='Feld 30: letztes Feld Spieler 4<%= spielfeld.getPlayareaText(29) %>' /></li>
								<li><img id='field31' src='img/field4<%= spielfeld.getPlayareaImage(30) %>.png' alt='Feld 31: erstes Feld Spieler 4<%= spielfeld.getPlayareaText(30) %>' title='Feld 31: erstes Feld Spieler 4<%= spielfeld.getPlayareaText(30) %>' /></li>
								<li><img id='field32' src='img/field<%= spielfeld.getPlayareaImage(31) %>.png' alt='Feld 32<%= spielfeld.getPlayareaText(31) %>' title='Feld 32<%= spielfeld.getPlayareaText(31) %>' /></li>
								<li><img id='field33' src='img/field<%= spielfeld.getPlayareaImage(32) %>.png' alt='Feld 33<%= spielfeld.getPlayareaText(32) %>' title='Feld 33<%= spielfeld.getPlayareaText(32) %>' /></li>
								<li><img id='field34' src='img/field<%= spielfeld.getPlayareaImage(33) %>.png' alt='Feld 34<%= spielfeld.getPlayareaText(33) %>' title='Feld 34<%= spielfeld.getPlayareaText(33) %>' /></li>
								<li><img id='field35' src='img/field<%= spielfeld.getPlayareaImage(34) %>.png' alt='Feld 35<%= spielfeld.getPlayareaText(34) %>' title='Feld 35<%= spielfeld.getPlayareaText(34) %>' /></li>
								<li><img id='field36' src='img/field<%= spielfeld.getPlayareaImage(35) %>.png' alt='Feld 36<%= spielfeld.getPlayareaText(35) %>' title='Feld 36<%= spielfeld.getPlayareaText(35) %>' /></li>
								<li><img id='field37' src='img/field<%= spielfeld.getPlayareaImage(36) %>.png' alt='Feld 37<%= spielfeld.getPlayareaText(36) %>' title='Feld 37<%= spielfeld.getPlayareaText(36) %>' /></li>
								<li><img id='field38' src='img/field<%= spielfeld.getPlayareaImage(37) %>.png' alt='Feld 38<%= spielfeld.getPlayareaText(37) %>' title='Feld 38<%= spielfeld.getPlayareaText(37) %>' /></li>
								<li><img id='field39' src='img/field<%= spielfeld.getPlayareaImage(38) %>.png' alt='Feld 39<%= spielfeld.getPlayareaText(38) %>' title='Feld 39<%= spielfeld.getPlayareaText(38) %>' /></li>
								<li><img id='field40' src='img/field<%= spielfeld.getPlayareaImage(39) %>.png' alt='Feld 40: letztes Feld Spieler 1<%= spielfeld.getPlayareaText(39) %>' title='Feld 40: letztes Feld Spieler 1<%= spielfeld.getPlayareaText(39) %>' /></li>
							</ol>
							<h3 class="accessibility">Starth&auml;user</h3>
							<ol title="Starthaus Spieler 1">
								<li><img id='field41' src='img/field1<%= spielfeld.getStartareaImage(0,0) %>.png' alt='Feld 41: Startfeld Spieler 1<%= spielfeld.getStartareaText(0,0) %>' title='Feld 41: Startfeld Spieler 1<%= spielfeld.getStartareaText(0,0) %>' /></li>
								<li><img id='field42' src='img/field1<%= spielfeld.getStartareaImage(0,1) %>.png' alt='Feld 42: Startfeld Spieler 1<%= spielfeld.getStartareaText(0,1) %>' title='Feld 42: Startfeld Spieler 1<%= spielfeld.getStartareaText(0,1) %>' /></li>
								<li><img id='field43' src='img/field1<%= spielfeld.getStartareaImage(0,2) %>.png' alt='Feld 43: Startfeld Spieler 1<%= spielfeld.getStartareaText(0,2) %>' title='Feld 43: Startfeld Spieler 1<%= spielfeld.getStartareaText(0,2) %>' /></li>
								<li><img id='field44' src='img/field1<%= spielfeld.getStartareaImage(0,3) %>.png' alt='Feld 44: Startfeld Spieler 1<%= spielfeld.getStartareaText(0,3) %>' title='Feld 44: Startfeld Spieler 1<%= spielfeld.getStartareaText(0,3) %>' /></li>
							</ol>
							<ol title="Starthaus Spieler 2">
								<li><img id='field45' src='img/field2<%= spielfeld.getStartareaImage(1,0) %>.png' alt='Feld 45: Startfeld Spieler 2<%= spielfeld.getStartareaText(1,0) %>' title='Feld 45: Startfeld Spieler 2<%= spielfeld.getStartareaText(1,0) %>' /></li>
								<li><img id='field46' src='img/field2<%= spielfeld.getStartareaImage(1,1) %>.png' alt='Feld 46: Startfeld Spieler 2<%= spielfeld.getStartareaText(1,1) %>' title='Feld 46: Startfeld Spieler 2<%= spielfeld.getStartareaText(1,1) %>' /></li>
								<li><img id='field47' src='img/field2<%= spielfeld.getStartareaImage(1,2) %>.png' alt='Feld 47: Startfeld Spieler 2<%= spielfeld.getStartareaText(1,2) %>' title='Feld 47: Startfeld Spieler 2<%= spielfeld.getStartareaText(1,2) %>' /></li>
								<li><img id='field48' src='img/field2<%= spielfeld.getStartareaImage(1,3) %>.png' alt='Feld 48: Startfeld Spieler 2<%= spielfeld.getStartareaText(1,3) %>' title='Feld 48: Startfeld Spieler 2<%= spielfeld.getStartareaText(1,3) %>' /></li>
							</ol>
							<ol title="Starthaus Spieler 3">	
								<li><img id='field49' src='img/field3<%= spielfeld.getStartareaImage(2,0) %>.png' alt='Feld 49: Startfeld Spieler 3<%= spielfeld.getStartareaText(2,0) %>' title='Feld 49: Startfeld Spieler 3<%= spielfeld.getStartareaText(2,0) %>' /></li>
								<li><img id='field50' src='img/field3<%= spielfeld.getStartareaImage(2,1) %>.png' alt='Feld 50: Startfeld Spieler 3<%= spielfeld.getStartareaText(2,1) %>' title='Feld 50: Startfeld Spieler 3<%= spielfeld.getStartareaText(2,1) %>' /></li>
								<li><img id='field51' src='img/field3<%= spielfeld.getStartareaImage(2,2) %>.png' alt='Feld 51: Startfeld Spieler 3<%= spielfeld.getStartareaText(2,2) %>' title='Feld 51: Startfeld Spieler 3<%= spielfeld.getStartareaText(2,2) %>' /></li>
								<li><img id='field52' src='img/field3<%= spielfeld.getStartareaImage(2,3) %>.png' alt='Feld 52: Startfeld Spieler 3<%= spielfeld.getStartareaText(2,3) %>' title='Feld 52: Startfeld Spieler 3<%= spielfeld.getStartareaText(2,3) %>' /></li>
							</ol>
							<ol title="Starthaus Spieler 4">	
								<li><img id='field53' src='img/field4<%= spielfeld.getStartareaImage(3,0) %>.png' alt='Feld 53: Startfeld Spieler 4<%= spielfeld.getStartareaText(3,0) %>' title='Feld 53: Startfeld Spieler 4<%= spielfeld.getStartareaText(3,0) %>' /></li>
								<li><img id='field54' src='img/field4<%= spielfeld.getStartareaImage(3,1) %>.png' alt='Feld 54: Startfeld Spieler 4<%= spielfeld.getStartareaText(3,1) %>' title='Feld 54: Startfeld Spieler 4<%= spielfeld.getStartareaText(3,1) %>' /></li>
								<li><img id='field55' src='img/field4<%= spielfeld.getStartareaImage(3,2) %>.png' alt='Feld 55: Startfeld Spieler 4<%= spielfeld.getStartareaText(3,2) %>' title='Feld 55: Startfeld Spieler 4<%= spielfeld.getStartareaText(3,2) %>' /></li>
								<li><img id='field56' src='img/field4<%= spielfeld.getStartareaImage(3,3) %>.png' alt='Feld 56: Startfeld Spieler 4<%= spielfeld.getStartareaText(3,3) %>' title='Feld 56: Startfeld Spieler 4<%= spielfeld.getStartareaText(3,3) %>' /></li>
							</ol>
							<h3 class="accessibility">Zielh&auml;user</h3>
							<ol title="Zielhaus Spieler 1">
								<li><img id='field57' src='img/field1<%= spielfeld.getFinishareaImage(0,0) %>.png' alt='Feld 57: Zielfeld Spieler 1<%= spielfeld.getFinishareaText(0,0) %>' title='Feld 57: Zielfeld Spieler 1<%= spielfeld.getFinishareaText(0,0) %>' /></li>
								<li><img id='field58' src='img/field1<%= spielfeld.getFinishareaImage(0,1) %>.png' alt='Feld 58: Zielfeld Spieler 1<%= spielfeld.getFinishareaText(0,1) %>' title='Feld 58: Zielfeld Spieler 1<%= spielfeld.getFinishareaText(0,1) %>' /></li>
								<li><img id='field59' src='img/field1<%= spielfeld.getFinishareaImage(0,2) %>.png' alt='Feld 59: Zielfeld Spieler 1<%= spielfeld.getFinishareaText(0,2) %>' title='Feld 59: Zielfeld Spieler 1<%= spielfeld.getFinishareaText(0,2) %>' /></li>
								<li><img id='field60' src='img/field1<%= spielfeld.getFinishareaImage(0,3) %>.png' alt='Feld 60: Zielfeld Spieler 1<%= spielfeld.getFinishareaText(0,3) %>' title='Feld 60: Zielfeld Spieler 1<%= spielfeld.getFinishareaText(0,3) %>' /></li>
							</ol>
							<ol title="Zielhaus Spieler 2">	
								<li><img id='field61' src='img/field2<%= spielfeld.getFinishareaImage(1,0) %>.png' alt='Feld 61: Zielfeld Spieler 2<%= spielfeld.getFinishareaText(1,0) %>' title='Feld 61: Zielfeld Spieler 2<%= spielfeld.getFinishareaText(1,0) %>' /></li>
								<li><img id='field62' src='img/field2<%= spielfeld.getFinishareaImage(1,1) %>.png' alt='Feld 62: Zielfeld Spieler 2<%= spielfeld.getFinishareaText(1,1) %>' title='Feld 62: Zielfeld Spieler 2<%= spielfeld.getFinishareaText(1,1) %>' /></li>
								<li><img id='field63' src='img/field2<%= spielfeld.getFinishareaImage(1,2) %>.png' alt='Feld 63: Zielfeld Spieler 2<%= spielfeld.getFinishareaText(1,2) %>' title='Feld 63: Zielfeld Spieler 2<%= spielfeld.getFinishareaText(1,2) %>' /></li>
								<li><img id='field64' src='img/field2<%= spielfeld.getFinishareaImage(1,3) %>.png' alt='Feld 64: Zielfeld Spieler 2<%= spielfeld.getFinishareaText(1,3) %>' title='Feld 64: Zielfeld Spieler 2<%= spielfeld.getFinishareaText(1,3) %>' /></li>
							</ol>
							<ol title="Zielhaus Spieler 3">		
								<li><img id='field65' src='img/field3<%= spielfeld.getFinishareaImage(2,0) %>.png' alt='Feld 65: Zielfeld Spieler 3<%= spielfeld.getFinishareaText(2,0) %>' title='Feld 65: Zielfeld Spieler 3<%= spielfeld.getFinishareaText(2,0) %>' /></li>
								<li><img id='field66' src='img/field3<%= spielfeld.getFinishareaImage(2,1) %>.png' alt='Feld 66: Zielfeld Spieler 3<%= spielfeld.getFinishareaText(2,1) %>' title='Feld 66: Zielfeld Spieler 3<%= spielfeld.getFinishareaText(2,1) %>' /></li>
								<li><img id='field67' src='img/field3<%= spielfeld.getFinishareaImage(2,2) %>.png' alt='Feld 67: Zielfeld Spieler 3<%= spielfeld.getFinishareaText(2,2) %>' title='Feld 67: Zielfeld Spieler 3<%= spielfeld.getFinishareaText(2,2) %>' /></li>
								<li><img id='field68' src='img/field3<%= spielfeld.getFinishareaImage(2,3) %>.png' alt='Feld 68: Zielfeld Spieler 3<%= spielfeld.getFinishareaText(2,3) %>' title='Feld 68: Zielfeld Spieler 3<%= spielfeld.getFinishareaText(2,3) %>' /></li>
							</ol>
							<ol title="Zielhaus Spieler 4">		
								<li><img id='field69' src='img/field4<%= spielfeld.getFinishareaImage(3,0) %>.png' alt='Feld 69: Zielfeld Spieler 4<%= spielfeld.getFinishareaText(3,0) %>' title='Feld 69: Zielfeld Spieler 4<%= spielfeld.getFinishareaText(3,0) %>' /></li>
								<li><img id='field70' src='img/field4<%= spielfeld.getFinishareaImage(3,1) %>.png' alt='Feld 70: Zielfeld Spieler 4<%= spielfeld.getFinishareaText(3,0) %>' title='Feld 70: Zielfeld Spieler 4<%= spielfeld.getFinishareaText(3,1) %>' /></li>
								<li><img id='field71' src='img/field4<%= spielfeld.getFinishareaImage(3,2) %>.png' alt='Feld 71: Zielfeld Spieler 4<%= spielfeld.getFinishareaText(3,0) %>' title='Feld 71: Zielfeld Spieler 4<%= spielfeld.getFinishareaText(3,2) %>' /></li>
								<li><img id='field72' src='img/field4<%= spielfeld.getFinishareaImage(3,3) %>.png' alt='Feld 72: Zielfeld Spieler 4<%= spielfeld.getFinishareaText(3,0) %>' title='Feld 72: Zielfeld Spieler 4<%= spielfeld.getFinishareaText(3,3) %>' /></li>
							</ol>
						</div>
						<div class="clearer"></div>  
						<div id="infogegner">W&uuml;rfelergebnis Computer: 3</div>
					</div>
				</div>				
			</div>
			<div id="footer">
				<p>&copy; 2012 EWA Mensch &auml;rgere Dich nicht.</p>
			</div>
        </div>
    </body>
</html>                           
