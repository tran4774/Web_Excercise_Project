<!DOCTYPE html>
<html>
<head>
    <%@include file="header_ch07_ex1.jsp" %>
</head>
<body>

<h1>Downloads</h1>

<h2>86 (the band) - True Life Songs and Pictures</h2>
    
<table>
<tr>
    <th>Song title</th>
    <th>Audio Format</th>
</tr>
<tr>
    <td>You Are a Star</td>
    <td><a href="/musicStore/sound/${productCode}/star.mp3">MP3</a></td>
</tr>
<tr>
    <td>Don't Make No Difference</td>
    <td><a href="/musicStore/sound/${productCode}/no_difference.mp3">MP3</a></td>
</tr>
</table>

<p><a href="?action=viewAlbums">View list of albums</a></p>

<p><a href="?action=viewCookies">View all cookies</a></p>

</body>
</html>