<?php header("Content-Type: text/html; charset=utf-8");
$brojID = $_POST['id'];

$servername = "localhost";
$dbname = "opcinegradovi";

$conn = new mysqli($servername,"root","",$dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql= "SELECT id, naziv, gradonacelnik, glavni_trg, zastavaData, grbData, br_stanovnika, zupanija, udaljenost_od_zg  FROM gradovi WHERE id = $brojID;";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $id = $row['id'];
        $naziv = $row['naziv'];
        $gradonacelnik = $row['gradonacelnik'];
        $glavni_trg = $row['glavni_trg'];
        $zastavaData = $row['zastavaData'];
        $grbData = $row['grbData'];
        $br_stanovnika = $row['br_stanovnika'];
        $udaljenost_od_zg = $row['udaljenost_od_zg'];

        $arr = array(
            'id' => $id,
            'naziv' => $naziv,
            'gradonacelnik' => $gradonacelnik, 
            'glavni_trg' => $glavni_trg,
            'zastavaData' => $zastavaData,
            'grbData' => $grbData,
            'br_stanovnika' => $br_stanovnika,
            'udaljenost_od_zg' => $udaljenost_od_zg
          ); 

        $json = json_encode($arr);
        if ($json)
            echo $json;
        else
            echo json_last_error_msg();
    }
  }
  $conn->close();
?>