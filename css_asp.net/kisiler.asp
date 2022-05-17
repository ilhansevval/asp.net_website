  <%
  If Session ("UserLoggedIn") <> "" Then
  %>
<html lang="tr">

    <head>
    <title>Şevval İLHAN</title>

    <link rel="stylesheet" href="main.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

    <meta name="description" content="Şevval İLHAN'S WEB SITE">
    <meta name="author" content="Şevval İLHAN">
    <meta name="keywords" content="Project">
    <meta charset="UTF-8">

    </head>

  <body>
  <body bgcolor="#747474">

    <header>

      <div class="header">
        <div class="logo"><img src="logo.png"></a></div>
        <div class="title">&emsp;MEZUNLAR SİTESİ</div>
        <div class="logo"><img src="logo2.png"></a></div>
      </div>

    </header>

      <div class="SideBar">
          <ul>

            <li><a href="index.asp">Anasayfa</a></li>
            <li><a href="forum.asp">Forum</a></li>
            <li><a href="kisiler.asp">Kisiler</a></li>
            <li><a href="foto.asp">Fotograflar</a></li>
            <li><a href="video.asp">Videolar</a></li>
            <li><a href="KimNeYapiyor.asp">Kim Nerede, Ne yapiyor?</a></li>
            <li><a href="harita.asp">Harita</a></li>
            <li><a href="kayit.asp">Kayit</a></li>
            <li><a href="Giris.asp">Giris</a></li>
            
          </ul>
        </div>

    <div class="boxc">
	
      <div class="kisiler">
       <table border="0" cellpadding="30" cellspacing="0" style="padding-top: 1px;" >
            <tr>
              <td align="center"><img src="img.jpg" width="80px" height="100px"/><br><br><br><a href="me.asp" style="color:black">Şevval İLHAN</a></td>
              <td align="center"><img src="img.jpg" width="80px" height="100px"/><br><br><br><a href="me.asp" style="color:black">Zeynep Bulut</a></td>
           <tr>
            <td align="center"><img src="img.jpg" width="80px" height="100px"/><br><br><br><a href="me.asp" style="color:black">Derin Kaynak</a></td>
            <td align="center"><img src="img.jpg" width="80px" height="100px"/><br><br><br><a href="me.asp" style="color:black">DenizKetenci</a></td>
          <tr>
            <td align="center"><img src="img.jpg" width="80px" height="100px"/><br><br><br><a href="me.asp" style="color:black">Güneş Oy</a></td>
            <td align="center"><img src="img.jpg" width="80px" height="100px"/><br><br><br><a href="me.asp" style="color:black">Ayşe Kartal</a></td>
         </tr>
                   
            </table>
       </div>

      </div>

        <footer>


      <p>Şevval İLHAN's ITP Project <br>
        <a href="ilhnsevval@gmail.com">İletişim - Mail</a>
      </p>  
      
    
    </footer>

  </body>
</html>
<% 
else
response.redirect "kayit.asp" 
end if
%>