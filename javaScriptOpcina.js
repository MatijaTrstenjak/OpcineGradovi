function getData(broj) {
    var xhr = new XMLHttpRequest();
    var url = "podatciOpcina.php";
    var params = "id="+broj;
    xhr.open("POST", url, true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send(params);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var response = JSON.parse(xhr.responseText);
            console.log(response);

            document.getElementById("naziv_Left").innerHTML = response['naziv'];
            document.getElementById("nacelnik_Left").innerHTML = response['nacelnik'];
            document.getElementById("glavni_trg_Left").innerHTML = response['glavni_trg'];
            document.getElementById("zastava_Left").src = response['zastavaData'];
            document.getElementById("grb_Left").src = response['grbData'];
            document.getElementById("br_stanovnika_Left").innerHTML = response['br_stanovnika'];
            document.getElementById("udaljenost_od_zg_Left").innerHTML = response['udaljenost_od_zg'];
        }
    };
  }
  
  function getData2(broj) {
    var xhr = new XMLHttpRequest();
    var url = "podatciOpcina.php";
    var params = "id="+broj;
    xhr.open("POST", url, true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send(params);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var response = JSON.parse(xhr.responseText);
            console.log(response);

            document.getElementById("naziv_Right").innerHTML = response['naziv'];
            document.getElementById("nacelnik_Right").innerHTML = response['nacelnik'];
            document.getElementById("glavni_trg_Right").innerHTML = response['glavni_trg'];
            document.getElementById("zastava_Right").src = response['zastavaData'];
            document.getElementById("grb_Right").src = response['grbData'];
            document.getElementById("br_stanovnika_Right").innerHTML = response['br_stanovnika'];
            document.getElementById("udaljenost_od_zg_Right").innerHTML = response['udaljenost_od_zg'];
        }
    };
  }