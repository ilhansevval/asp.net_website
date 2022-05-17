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

        <div class="kayit">
        <b><i>KAYIT FORMU :</i></b> <br ><br >
              <form action ="kayitol.asp" method="post">
              <b width="50%" align="left"  height="60%" >Ad Soyad :</b><br>
              <input type="text" name="name_surname" placeholder="Ad-Soyad...">
			  <br><br>
              <b align="left">Kullanıcı Adınız : </b>
              <b><input type="text" name="username" required></b>
			  <br><br>
              <b align="left">Şifre : </b>
              <b><input type="password" name="password"  required></b>
			  <br><br>
              <b align="left">Email adresiniz : </b>
              <b><input type="email" name="mail" required></b>
			  <br><br>
              <b align="left">Cinsiyet : </b><br>
              <b><input type="radio" value="erkek" name="gender">Erkek</b><br>
              <b><input type="radio" value="kadin" name="gender">Kadın</b>
			  <br><br>
              <b align="left">Doğum Tarihi : </b>
              <b>  <input type="date" name="bdate">	</b>
             <br><br>
              <b align="left">Yaşadığı Şehir : </b>
              <b>  <select name="city" >
                   <option value="istanbul">ISTANBUL</option>
                  <option value="antalya">ANTALYA</option>
                  <option value="bilecik">BİLECİK</option>
                   <option value="sakarya">SAKARYA</option>
              </select></b>
			  
            <br><br>
              <b align="left">Bio : </b><br >
              <b><textarea name="bio" placeholder="Kısaca kendinizden bahsedin..." rows="5" cols="40"style="overflow:scroll;"></textarea></b>
            
            <br><br>
            <b align="left" colspan="2">
              <input type="checkbox" value:="onaylandi" name="rules" required>Üyelik şartlarını kabul ediyorum. 
             
            </b>

            <td> <input type="submit" value="Kayıt Ol"></td> 
            </form>
        </div>


    </div>

        <footer>


      <p>Şevval İLHAN's ITP Project <br>
        <a href="ilhnsevval@gmail.com">İletişim - Mail</a>
      </p>  
      
    
    </footer>

  </body>
</html>