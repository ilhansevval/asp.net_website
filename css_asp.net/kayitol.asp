<meta http-equib="Content-Type" content ="text/html; charset=windows-1254">
<meta charset="UTF-8">
<%

Set baglanti=CreateObject("ADODB.Connection")

baglanti.Open (	"DRIVER={Microsoft Access Driver (*.mdb)}; DBQ="& Server.MapPath ("vt.mdb"))

Set Tablom= server. CreateObject("ADODB.Recordset")
Tablom.Open "Tablo1", baglanti,1,3

Tablom.AddNew

Tablom("username")=request("username")
Tablom("password")=request("password")
Tablom("mail")=request("mail")
Tablom("name_surname")=request("name_surname")
Tablom("gender")=request("gender")
Tablom("bdate")=request("bdate")

Tablom("city")=request("city")
Tablom("bio")=request("bio")


Tablom.Update


Tablom.close
baglanti.close
set baglanti=Nothing
response.write "Veri Girisi Yapilmistir."
%>
<p> <a href="index.asp"> Anasayfa </a> </p>