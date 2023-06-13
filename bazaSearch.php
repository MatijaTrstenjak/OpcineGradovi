<?php header("Content-Type: text/html; charset=utf-8");
    $searchTerm = $_GET['search'];
    $data = array();

    $servername = "localhost";
    $dbname = "opcinegradovi";
    
    $conn = new mysqli($servername,"root","",$dbname);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql= "SELECT id, naziv FROM gradovi";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $naziv = $row['naziv'];
            $data[] = $naziv;
        }
      }

      $sql= "SELECT id, naziv FROM opcine";
      $result = $conn->query($sql);

      if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $naziv = $row['naziv'];
            $data[] = $naziv;
        }
      }

    $conn->close();

$results = array();
foreach ($data as $item) {
  if (stristr($item, $searchTerm)) {
    $results[] = $item;
  }
}
echo json_encode($results);
?>