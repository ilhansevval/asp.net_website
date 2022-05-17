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

    <div class="boxd">
      <div class="photo"><img src="foto2.JPG"><br>
      <br><br><br>
	  
	  <form action="foto2.asp" method="POST">
            <tr>
            <td width="350">
            </td>
            <td><b>Ad : </b> <input type="text" name="user" placeholder="ADINIZ..." size="20" style="width:150px; height:30px; ">
            <br><br><br>
            <td> <b>Yorum: </b><br>
            <textarea name="message" placeholder="YORUMUNUZ..." rows="10" cols="70"></textarea><br><br></td>
            <td align="right" colspan="2"><input  style="margin-left: 476px"input type="submit" value="Gönder"></td>
            </tr>

              </table>
			  </form>
			  
			  
	    <br><br><br>

            <form method="get" action="foto.asp">
              <td align="right" colspan="2"><input  style="margin-left: 476px"input type="submit" value="Geri Dön"></td>
            </form>
			<br><br><br>
      
          <%
	set conn = Server.CreateObject("ADODB.Connection")
		conn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("sun.mdb"))
		set veri=Server.CreateObject("ADODB.Recordset")
		
		veri.Open "yorumlar2", conn
	%>
	<table  cellpadding="10" border="0" height="200" align="center" >
	<table  bgcolor="#afc4b9" bordercolor="#045b0a"; cellpadding="10" border="5"  width="450" >
		<tr>
		<td>ID</td>
		<td>ISIM</td>
		<td>YORUM</td>
		<td>TARIH</td>
		</tr>
		
		
	<%
		do while not veri.eof
			response.write "<tr>"
				response.write "<td>" & veri("Kimlik") & "</td>"
				response.write "<td>" & veri("isim") & "</td>"
				response.write "<td>" & veri("yorum") & "</td>"
				response.write "<td>" & veri("tarih") & "</td>"
			response.write "</tr>"
			
			veri.movenext
			loop

	%>
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
	if request.servervariables("REQUEST_METHOD")="POST" then
		ad=request.form("user")
		mesaj=request.form("message")
		tarih=now()

		set conn = Server.CreateObject("ADODB.Connection")
		conn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("sun.mdb"))
		
		sql="INSERT INTO yorumlar2(isim,yorum,tarih) VALUES('" & ad & "','" & mesaj & "','" & tarih & "')"
		conn.Execute sql

		conn.Close
		set conn=Nothing
		response.redirect "foto2.asp"

		end if
%>