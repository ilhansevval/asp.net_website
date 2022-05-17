
<html lang="tr">

    <head>
    <title>Şevval İLHAN</title>

    <link rel="stylesheet" href="main.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

    <meta name="description" content="Şevval İLHAN'S WEB SITE">
    <meta name="author" content="Şevval İLHAN">
    <meta name="keywords" content="Project">
    <meta charset="UTF-8">

<script>
    function imageZoom(imgID, resultID) {
    var img, lens, result, cx, cy;
    img = document.getElementById(imgID);
    result = document.getElementById(resultID);
    /*create lens:*/
    lens = document.createElement("DIV");
    lens.setAttribute("class", "img-zoom-lens");
    /*insert lens:*/
    img.parentElement.insertBefore(lens, img);
    /*calculate the ratio between result DIV and lens:*/
    cx = result.offsetWidth / lens.offsetWidth;
    cy = result.offsetHeight / lens.offsetHeight;
    /*set background properties for the result DIV:*/
    result.style.backgroundImage = "url('" + img.src + "')";
    result.style.backgroundSize = (img.width * cx) + "px " + (img.height * cy) + "px";
    /*execute a function when someone moves the cursor over the image, or the lens:*/
    lens.addEventListener("mousemove", moveLens);
    img.addEventListener("mousemove", moveLens);
    /*and also for touch screens:*/
    lens.addEventListener("touchmove", moveLens);
    img.addEventListener("touchmove", moveLens);
        function moveLens(e) {
            var pos, x, y;
            /*prevent any other actions that may occur when moving over the image:*/
            e.preventDefault();
            /*get the cursor's x and y positions:*/
            pos = getCursorPos(e);
            /*calculate the position of the lens:*/
            x = pos.x - (lens.offsetWidth / 2);
            y = pos.y - (lens.offsetHeight / 2);
            /*prevent the lens from being positioned outside the image:*/
            if (x > img.width - lens.offsetWidth) {x = img.width - lens.offsetWidth;}
            if (x < 0) {x = 0;}
            if (y > img.height - lens.offsetHeight) {y = img.height - lens.offsetHeight;}
            if (y < 0) {y = 0;}
            /*set the position of the lens:*/
            lens.style.left = x + "px";
            lens.style.top = y + "px";
            /*display what the lens "sees":*/
            result.style.backgroundPosition = "-" + (x * cx) + "px -" + (y * cy) + "px";
        }
        function getCursorPos(e) {
            var a, x = 0, y = 0;
            e = e || window.event;
            /*get the x and y positions of the image:*/
            a = img.getBoundingClientRect();
            /*calculate the cursor's x and y coordinates, relative to the image:*/
            x = e.pageX - a.left;
            y = e.pageY - a.top;
            /*consider any page scrolling:*/
            x = x - window.pageXOffset;
            y = y - window.pageYOffset;
            return {x : x, y : y};
        }
    }
</script>
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
      
          <div class="boxf"> 
          <form method="POST" action="harita.asp">
                    <div class="harita">
             <table width="100% >
                <tr>
                    <td width="100%"  height="100%" ><div class="harita" style=" background-image:url(https://www.kgm.gov.tr/SiteCollectionImages/KGMimages/Haritalar/turistik.jpg);width:500px; height:500px;background-repeat:no-repeat; background-position:-3235px -600px">
        </td>
                </tr>
              </table></div> <br><br><br><br><br>

	 <div class="img-zoom-container">
                <img id="myimage" src="harita.jpg" width="100%" height="450" alt="Türkiye Haritası">
                <div id="myresult" class="img-zoom-result"></div>
            
	</div>

        <footer>


      <p>Şevval İLHAN's ITP Project <br>
        <a href="ilhnsevval@gmail.com">İletişim - Mail</a>
      </p>  
      
    
    </footer>

   </body>
 </html>
