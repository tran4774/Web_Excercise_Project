<!DOCTYPE html>
<html>
<head>
    <%@ include file="header_ch07_ex2.jsp"%></head>
<body>

<h1>Downloads</h1>

<h2>${product.description}</h2>
    
<table>
<tr>
    <th>Song title</th>
    <th>Audio Format</th>
</tr>
<tr>
    <td>64 Corvair</td>
    <td><a href="/musicStore/sound/${product.code}/corvair.mp3">MP3</a></td>
</tr>
<tr>
    <td>Whiskey Before Breakfast</td>
    <td><a href="/musicStore/sound/${product.code}/whiskey.mp3">MP3</a></td>
</tr>
</table>

<p><a href="?action=viewAlbums">View list of albums</a></p>

<p><a href="?action=viewCookies">View all cookies</a></p>

</body>
</html>