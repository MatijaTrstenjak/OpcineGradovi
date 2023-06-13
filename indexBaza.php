<?php header("Content-Type: text/html; charset=utf-8");?>
<!DOCTYPE html>
<html lang="hr">
<head>
<link rel="stylesheet" href="style1.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Međimurske općine i gradovi</title>
</head>
<body>
  <header class="header">
    <a href="#" class="logo">Tehnička Škola Čakovec</a>
    <nav class="nav-items">
      <div id="marker"></div>
      <a href="index.html">Početna</a>
      <a href="indexOpcina.php">Općine</a>
      <a href="indexGrad.php">Gradovi</a>
      <a class="nav-oznacen" href="indexBaza.php">Pretraživanje</a>
    </nav>
  </header>

  <div class="intro">
      <h1>Pretraživanje</h1>
      <p> Izdradio: Matija Trstenjak 4.RT</p>
  </div>

  <div class="containter3">
    <div class="ispis">
      <h1>Pretraži po imenu</h1>
      <input type="text" id="searchInput" placeholder="Traži.." width="40" height="40" style="text-align:center;">
      <table id="searchResults">
        <thead>
          <tr>
            <th>Search Results</th>
          </tr>
        </thead>
        <tbody id="resultsBody">
        </tbody>
      </table>
    </div>
  </div>
  <footer>
  </footer>
<script src="javaScriptBaza.js"></script>
</body>
</html>
