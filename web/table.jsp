<%@page import="model.PlayerColor"%>
<%@page contentType="application/xhtml+xml" pageEncoding="UTF-8"%>
<jsp:useBean id="spiel" class="model.Spiel" scope="session" />
<jsp:useBean id="util" class="ewa2.util.SpielUtil" scope="page" />
<%@page import="java.util.Iterator"%>
<%@page import="model.Feld"%>
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
					<% if(spiel.isOver()) {%>
					<form action="SpielController" method="post" id="restartgame">
					    <input type="hidden" name="action" value="restart" />
					    <input type="submit" name="submit" value="Restart Game" />
					</form>
					<% } %>
					<h2>Spielinformationen</h2>
					<table class="game_info" summary="Diese Tabelle zeigt Informationen zum aktuellen Spiel">
						<tbody>
							<tr class="accessibility">
								<th>Information</th>
								<th>Wert</th>
							</tr>
							<tr>
								<th>Anzahl Spieler</th>
								<td><%= spiel.getPlayerCnt() %></td>
							</tr>
							<tr>
								<th>F&uuml;hrender</th>
								<td><%= spiel.getLeader().getName() %></td>
							</tr>
							<tr>
								<th>Aktuelle Runde</th>
								<td><%= spiel.getRound() %></td>
							</tr>
							<tr>
								<th>Zeit</th>
								<td><%= spiel.getTime() %></td>
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
                                                    <% for ( int i=0; i < spiel.Player.size(); i++) { %>
							<tr>
								<th>Spieler <%= i+1 %></th>
								<td><%= spiel.Player.get(i).getName() %></td>
							</tr>
                                                    <% } %>
						</tbody>
					</table>
				</div>
				<div id="dicearea">
					<hr class="accessibility" />
					<h2 class="accessibility">W&uuml;rfel</h2>
					<span title='aktueller Spieler'><%= spiel.Player.get(0).getName() %></span>
                                        <% if(!spiel.isOver()) {%>
                                        <form action="SpielController" method="post" id="newwuerfel">
                                            <input type="hidden" name="action" value="wuerfeln" />
                                            <button type="submit" name="submit">
                                        <% } %>
                                                <% int wuerfelerg = 0;
                                                if(spiel.Player.get(0).LastDies.peek() != null)
                                                        wuerfelerg = spiel.Player.get(0).LastDies.poll(); %>
                                                <img name="wuerfel" title="W&uuml;rfel Zahl <%= wuerfelerg %>" src="img/wuerfel<%= wuerfelerg %>.png" alt="W&uuml;rfel Zahl <%= wuerfelerg %>"/>
                                        <% if(!spiel.isOver()) {%>
                                            </button>
                                        </form>
                                        <% } %>
                                </div>
				<div id="play_area">
					<hr class="accessibility" />
					<div id="board">
						<h2 class="accessibility">Spielbrett</h2>
						<div class="fields">
							<h3 class="accessibility">Spielfelder</h3>
							<ol title="Spielfelder">
                                                                <% Iterator<Feld> it = spiel.Playarea.getFieldIter();
                                                                Feld field;
                                                                for(int i=1; it.hasNext(); i++) {
                                                                    field = it.next(); %>
								<li><img id='field<%= i %>' src='<%= util.getPlayareaImage(field) %>' alt='<%= util.getPlayareaText(i,field) %>' title='<%= util.getPlayareaText(i,field) %>' /></li>
                                                                <% } %>
							</ol>
							<h3 class="accessibility">Starth&auml;user</h3>
							<ol title="Starthaus Spieler 1">
                                                            <% it = spiel.Playarea.getStartIter(PlayerColor.Yellow);
                                                                for(int i=41; it.hasNext(); i++) {
                                                                    field = it.next(); %>
								<li><img id='field<%= i %>' src='<%= util.getStartareaImage(field) %>' alt='<%= util.getStartareaText(i,field) %>' title='<%= util.getStartareaText(i,field) %>' /></li>
                                                                <% } %>
							</ol>
							<ol title="Starthaus Spieler 2">
								<% it = spiel.Playarea.getStartIter(PlayerColor.Green);
                                                                for(int i=45; it.hasNext(); i++) {
                                                                    field = it.next(); %>
								<li><img id='field<%= i %>' src='<%= util.getStartareaImage(field) %>' alt='<%= util.getStartareaText(i,field) %>' title='<%= util.getStartareaText(i,field) %>' /></li>
                                                                <% } %>
                                                        </ol>
							<ol title="Starthaus Spieler 3">	
								<% it = spiel.Playarea.getStartIter(PlayerColor.Red);
                                                                for(int i=49; it.hasNext(); i++) {
                                                                    field = it.next(); %>
								<li><img id='field<%= i %>' src='<%= util.getStartareaImage(field) %>' alt='<%= util.getStartareaText(i,field) %>' title='<%= util.getStartareaText(i,field) %>' /></li>
                                                                <% } %>
                                                        </ol>   
							<ol title="Starthaus Spieler 4">	
								<% it = spiel.Playarea.getStartIter(PlayerColor.Blue);
                                                                for(int i=53; it.hasNext(); i++) {
                                                                    field = it.next(); %>
								<li><img id='field<%= i %>' src='<%= util.getStartareaImage(field) %>' alt='<%= util.getStartareaText(i,field) %>' title='<%= util.getStartareaText(i,field) %>' /></li>
                                                                <% } %>
                                                        </ol>
							<h3 class="accessibility">Zielh&auml;user</h3>
							<ol title="Zielhaus Spieler 1">
								<% it = spiel.Playarea.getFinishIter(PlayerColor.Yellow);
                                                                for(int i=57; it.hasNext(); i++) {
                                                                    field = it.next(); %>
								<li><img id='field<%= i %>' src='<%= util.getFinishareaImage(field) %>' alt='<%= util.getFinishareaText(i,field) %>' title='<%= util.getFinishareaText(i,field) %>' /></li>
                                                                <% } %>
                                                        </ol>
							<ol title="Zielhaus Spieler 2">	
								<% it = spiel.Playarea.getFinishIter(PlayerColor.Green);
                                                                for(int i=61; it.hasNext(); i++) {
                                                                    field = it.next(); %>
								<li><img id='field<%= i %>' src='<%= util.getFinishareaImage(field) %>' alt='<%= util.getFinishareaText(i,field) %>' title='<%= util.getFinishareaText(i,field) %>' /></li>
                                                                <% } %>
                                                        </ol>
							<ol title="Zielhaus Spieler 3">		
								<% it = spiel.Playarea.getFinishIter(PlayerColor.Red);
                                                                for(int i=65; it.hasNext(); i++) {
                                                                    field = it.next(); %>
								<li><img id='field<%= i %>' src='<%= util.getFinishareaImage(field) %>' alt='<%= util.getFinishareaText(i,field) %>' title='<%= util.getFinishareaText(i,field) %>' /></li>
                                                                <% } %>
                                                        </ol>
							<ol title="Zielhaus Spieler 4">		
								<% it = spiel.Playarea.getFinishIter(PlayerColor.Blue);
                                                                for(int i=69; it.hasNext(); i++) {
                                                                    field = it.next(); %>
								<li><img id='field<%= i %>' src='<%= util.getFinishareaImage(field) %>' alt='<%= util.getFinishareaText(i,field) %>' title='<%= util.getFinishareaText(i,field) %>' /></li>
                                                                <% } %>
                                                        </ol>
						</div>
						<div class="clearer"></div>  
						<div id="infogegner">W&uuml;rfelergebnis Computer: <% while(spiel.Player.get(1).LastDies.peek() != null) { %>
                                                    <%= spiel.Player.get(1).LastDies.poll() %>
                                                    <% if(spiel.Player.get(1).LastDies.peek() != null) { %>
                                                    -
                                                    <% } } %>
                                                </div>
					</div>
				</div>				
			</div>
			<div id="footer">
				<p>&copy; 2012 EWA Mensch &auml;rgere Dich nicht.</p>
			</div>
        </div>
    </body>
</html>                           
