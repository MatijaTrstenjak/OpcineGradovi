var searchInput = document.getElementById('searchInput');
var resultsBody = document.getElementById('resultsBody');

searchInput.addEventListener('input', function() {
  var searchValue = searchInput.value;
  resultsBody.innerHTML = '';
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      var searchResults = JSON.parse(this.responseText);
      for (var i = 0; i < searchResults.length; i++) {
        var row = resultsBody.insertRow(i);
        var cell = row.insertCell(0);
        cell.innerHTML = searchResults[i];
      }
    }
  };
  xhttp.open('GET', 'bazaSearch.php?search=' + searchValue, true);
  xhttp.send();
});