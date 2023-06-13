<?php header("Content-Type: text/html; charset=utf-8");

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
            print("<div id=data onClick=getData({$row['id']})>".$row['naziv']."</div>");
        }
      }
    $conn->close();
?>