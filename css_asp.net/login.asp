 <meta http-equib="Content-Type" content ="text/html; charset=windows-1254"> 
 <meta charset="UTF-8">
<%
dim username,user

Response.Buffer=True
Response.Expires=-100
username=request.form("username")
password=request.form("password")

Db=SERVER.MAPPATH("vt.mdb")
Set Baglanti= Server.CreateObject("Adodb.Connection")
Baglanti.Open "DBQ="& Db & ";Driver={Microsoft Access Driver (*.mdb)}"
Set Rs=Server.CreateObject("Adodb.recordset")

sorgu="select * from Tablo1 where username='"&request.form("username") & "'and password='"& Request.form("password")& "'"
Set grup=Baglanti.Execute(sorgu) 'ppp

Rs.Open sorgu,Baglanti,1,3

If RS.BOF And RS.EOF Then

Response.Write "Hatali giris"

else
user=grup("username")
Session ("UserLoggedIn") =user
response.write "Onaylandi"
%>

<% End If %>

<a href="index.asp"> Anasayfa </a>