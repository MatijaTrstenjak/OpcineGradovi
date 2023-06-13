<?php header("Content-Type: text/html; charset=utf-8");?>
<!DOCTYPE html>
<html lang="hr">
<head>
<link rel="stylesheet" href="style1.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Međimurske općine i gradovi</title>
</head>
<body>

<header class="header">
    <a href="#" class="logo">Tehnička Škola Čakovec</a>
    <nav class="nav-items">
      <a href="index.html">Početna</a>
      <a class="nav-oznacen" href="indexOpcina.php">Općine</a>
      <a href="indexGrad.php">Gradovi</a>
      <a href="indexBaza.php">Pretraživanje</a>
    </nav>
  </header>

  <div class="intro">
      <h1>Uspoređivanje općina</h1>
      <p> Izdradio: Matija Trstenjak 4.RT</p>
  </div>

<div class="container">

  <div class="dropdown">
    <button class="dropbtn">Odaberi</button>
    <div class="dropdown-content" style="left:0;">
      <?php header("Content-Type: text/html; charset=utf-8");
      include 'ispisDropdownOpcina.php';
      ?>
    </div>
  </div>

  <div id = "resultLeft" style="max-width:40%; height:auto;">
    <table class="table1"> 
      <tr>
        <td>Općina</td>
        <td id="naziv_Left"></td>
      </tr>
      <tr>
        <td>Načelnik</td>
        <td id="nacelnik_Left"></td>
      </tr>
      <tr>
        <td>Glavni trg</td>
        <td id="glavni_trg_Left"></td>
      </tr>
      <tr>
        <td>Zastava</td>
        <td><img id="zastava_Left" src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" width="auto" height="150px" style="object-fit: contain" ></td>
      </tr>
      <tr>
        <td>Grb</td>
        <td><img id="grb_Left" src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" width="100px" height="auto" style="object-fit: contain"></td>
      </tr>
      <tr>
        <td>Broj stanovnika</td>
        <td id="br_stanovnika_Left"></td>
      </tr>
      <tr>
        <td>Udaljenost od Zagreba</td>
        <td id="udaljenost_od_zg_Left"></td>
      </tr>
    </table>
  </div>

  <div id = "resultRight" style="max-width:40%; height:auto;">
    <table class="table2"> 
      <tr>
        <td>Općina</td>
        <td id="naziv_Right"></td>
      </tr>
      <tr>
        <td>Načelnik</td>
        <td id="nacelnik_Right"></td>
      </tr>
      <tr>
        <td>Glavni trg</td>
        <td id="glavni_trg_Right"></td>
      </tr>
      <tr>
        <td>Zastava</td>
        <td><img id="zastava_Right" src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" width="auto" height="150px" style="object-fit: contain"></td>
      </tr>
      <tr>
        <td>Grb</td>
        <td><img id="grb_Right" src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" width="100px" height="auto" style="object-fit: contain"></td>
      </tr>
      <tr>
        <td>Broj stanovnika</td>
        <td id="br_stanovnika_Right"></td>
      </tr>
      <tr>
        <td>Udaljenost od Zagreba</td>
        <td id="udaljenost_od_zg_Right"></td>
      </tr>
    </table>
  </div>
  <div class="dropdown">
    <button class="dropbtn">Odaberi</button>
    <div class="dropdown-content">
      <?php header("Content-Type: text/html; charset=utf-8");
      include 'ispisDropdownOpcina2.php';
      ?>
    </div>
  </div>
</div>
<footer>
</footer>
<script src="javaScriptOpcina.js"></script>
</body>
</html>
