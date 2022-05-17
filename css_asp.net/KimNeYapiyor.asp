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
        <div class="kimneredeneyapiyor">

        <%
	set conn = Server.CreateObject("ADODB.Connection")
		conn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("vt.mdb"))
		set veri=Server.CreateObject("ADODB.Recordset")
		
		veri.Open "Tablo1", conn
	%>
	<table  cellpadding="10" border="0" height="200" align="center" >
	<table  bgcolor="#afc4b9" bordercolor="#045b0a"; cellpadding="10" border="5"  width="450" >
		<tr>
		<td>ID</td>
		<td>ISIMSOYISIM</td>
		<td>NİCKNAME</td>
		<td>SIFRE</td>
		<td>EMAİL</td>
		<td>CİNSİYET</td>
		<td>DOGUMGUNU</td>
		<td>SEHİR</td>
		<td>BIYOGRAFI</td>
		</tr>
		
		
	<%
		do while not veri.eof
			response.write "<tr>"
				response.write "<td>" & veri("Kimlik") & "</td>"
				response.write "<td>" & veri("name_surname") & "</td>"
				response.write "<td>" & veri("username") & "</td>"
				response.write "<td>" & veri("password") & "</td>"
				response.write "<td>" & veri("mail") & "</td>"
				response.write "<td>" & veri("gender") & "</td>"
				response.write "<td>" & veri("bdate") & "</td>"
				response.write "<td>" & veri("city") & "</td>"
				response.write "<td>" & veri("bio") & "</td>"
				
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
		kullaniciadi=request.form("username")
		parola=request.form("password")
		adsoyad=request.form("name_surname")
		eposta=request.form("mail")
		cins=request.form("gender")
		dtarih=request.form("bdate")
		il=request.form("city")
		biog=request.form("bio")

		set conn = Server.CreateObject("ADODB.Connection")
		conn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("vt.mdb"))

		
		sql="INSERT INTO Tablo1(username,password,name_surname,mail,gender,bdate,city,bio) VALUES('" & kullaniciadi & "','" & parola & "','" & adsoyad & "','" & eposta & "','" & cins & "','" & dtarih & "','" & il & "','" & biog & "')"
		conn.Execute sql

		conn.Close
		set conn=Nothing
		response.redirect "me.asp"

		end if
%>
<% 
else
response.redirect "kayit.asp" 
end if
%>
