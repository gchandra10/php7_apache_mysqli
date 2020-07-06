# php7_apache_mysqli

**Get Server IP**

    docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <mysql_container_name>

**Sample PHP Code**

    <?php
    $servername = "";
    $username = "";
    $password = "";
    $dbname = "";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM tablename";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo $row["column1"]. " - " . $row["columne2"] . "<br>";
    }
    } else {
    echo "0 results";
    }
    $conn->close();
    ?>
