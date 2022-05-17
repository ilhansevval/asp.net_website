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

    <div class="box">
      <div class="video">

          <table  cellspacing="0" cellpadding="5"  width="900">
              <tr>
              <td><a href="videoa.asp"><img src="https://img.youtube.com/vi/t7Ag9Q8eLOw/hqdefault.jpg" width="250" height="250"/></a></td> <br><br>  
              <td><a href="videob.asp"><img src="https://img.youtube.com/vi/8rY5CaCBc_g/hqdefault.jpg" width="250" height="250"/></a></td>
             </tr> </table> <br> <br>

             <table cellspacing="0" cellpadding="5"  width="900">
             <tr>
              <td ><a href="videoc.asp"><img src="https://img.youtube.com/vi/1KapUgnM4ks/hqdefault.jpg" width="250" height="250"/></a></td>
              <td ><a href="videod.asp"><img src="https://img.youtube.com/vi/yVjmuNj5TdA/hqdefault.jpg" width="250" height="250"/></a></td>		
              </tr><br> <br>
              <tr height="100">
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