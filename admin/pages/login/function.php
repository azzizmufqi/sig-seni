<?php
$host = "localhost";
$user = "root";
$pass = "";
$name = "sig";

$conn = mysqli_connect($host, $user, $pass, $name);

function daftar($data) {
    global $conn;

    $fullname = $data["fullname"];
    $username = strtolower(stripcslashes($data["username"]));
    $password = mysqli_real_escape_string($conn, $data["password"]);
    $password2 = mysqli_real_escape_string($conn, $data["password2"]);

    //cek username
    $result = mysqli_query($conn, "SELECT username FROM users WHERE username = '$username'");
    if (mysqli_fetch_assoc($result)) {
        echo "<script>
            alert('username sudah terdaftar!');    
            </script>";
        return false;
    }

    //cek konfirmasi password
    if ($password !== $password2) {
        echo "<script>
                alert('konfirmasi password tidak sesuai!');    
                </script>";
        return false;
    }

    //enkripsi pass
    $password = password_hash($password, PASSWORD_DEFAULT);

    //tambah data
    mysqli_query($conn, "INSERT INTO users VALUES ('', '$fullname', '$username', '$password')");

    return mysqli_affected_rows($conn);
}



?>

