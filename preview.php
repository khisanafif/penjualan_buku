<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Preview Buku</title>
</head>
<body>
    <div id="preview-container"></div>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Mengambil data dari server menggunakan AJAX
            var bookId = 1; // Ganti dengan ID buku yang diinginkan
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "preview.php?action=get_preview_data&id=" + bookId, true);
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    var data = JSON.parse(xhr.responseText);
                    displayPreview(data);
                }
            };
            xhr.send();
        });

        function displayPreview(data) {
            var previewContainer = document.getElementById("preview-container");

            // Menampilkan data preview buku
            data.forEach(function (book) {
                var previewDiv = document.createElement("div");
                previewDiv.innerHTML = "<h2>" + book.title + "</h2>" +
                    "<p>ID: " + book.id + "</p>" +
                    "<p>" + book.preview_text + "</p>" +
                    "<img src='" + book.preview_image + "' alt='" + book.title + "'>";
                previewContainer.appendChild(previewDiv);
            });
        }
    </script>

    <?php
    // Menggunakan koneksi dari DBConnection.php
    require_once "classes/DBConnection.php";

    try {
        $dbConnection = new DBConnection();
        $conn = $dbConnection->getConnection();

        // Mengambil data dari tabel products berdasarkan ID
if (isset($_GET['action']) && $_GET['action'] == 'get_preview_data' && isset($_GET['id'])) {
    $bookId = $conn->real_escape_string($_GET['id']);
    $sql = "SELECT id, title, preview_text, preview_image FROM products WHERE id = $bookId";
    
    $result = $conn->query($sql);

    $data = array();

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
    }

    // Mengirim data sebagai respons JSON
    header('Content-Type: application/json');
    echo json_encode($data);
}

    } catch (Exception $e) {
        // Handle any exceptions related to database connection
        echo "Error: " . $e->getMessage();
    } finally {
        if (isset($dbConnection)) {
            $dbConnection->closeConnection();
        }
    }
    ?>
</body>
</html>
