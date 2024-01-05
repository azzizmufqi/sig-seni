<?php

//koneksi db
$host = "localhost";
$user = "root";
$pass = "";
$name = "sig";

$conndata = mysqli_connect($host, $user, $pass, $name);

function query($query) {
    global $conndata;
    $result = mysqli_query($conndata, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

//ambil data
//$result = mysqli_query($conndata, "SELECT * FROM senbud");

//ambil data (fetch) senbud dari object result
//mysqli_fetch_row() // mengembalikan array numerik
//mysqli_fetch_assoc() // mengembalikan array associative
//mysqli_fetch_array() // mengembalikan keduanya
//mysqli_fetch_object()

// while ($datasb = mysqli_fetch_assoc($result)) {
//   var_dump($datasb);
// }

function tambah($data) {
    global $conndata;
    $nama_senbud = htmlspecialchars($data["nama_senbud"]);
    $kategori = htmlspecialchars($data["kategori"]);
    $alamat = htmlspecialchars($data["alamat"]);
    $kontak = htmlspecialchars($data["kontak"]);
    $latitude = htmlspecialchars($data["latitude"]);
    $longitude = htmlspecialchars($data["longitude"]);

    //upload gambar
    $gambar = upload();
    if( !$gambar ) {
        return false;
    }

    $query = "INSERT INTO senbud VALUES ('', '$nama_senbud', '$kategori', '$alamat', '$kontak', '$gambar',  '$latitude', '$longitude')";
    mysqli_query($conndata, $query);

    return mysqli_affected_rows($conndata);
} 

function upload() {
    $namaFile = $_FILES['gambar']['name'];
    $ukuranFile = $_FILES['gambar']['size'];
    $error = $_FILES['gambar']['error'];
    $tmpName = $_FILES['gambar']['tmp_name'];

    //cek apakah tidak ada gambar yang diupload
    if( $error === 4) {
        echo "<script>
                    alert('pilih gambar terlebih dahulu');
                </script>";
        return false;
    }

    // cek apakah yang diupload adalah gambar
    $ekstensiGambarValid = ['jpg', 'jpeg', 'png'];
    $ekstensiGambar = explode('.', $namaFile);
    $ekstensiGambar = strtolower(end($ekstensiGambar));

    if( !in_array($ekstensiGambar, $ekstensiGambarValid)) {
        echo "<script>
                    alert('harap masukkan gambar');
                </script>";
        return false;
    }

    //cek apakah ukuran file tidak terlalu besar
    if( $ukuranFile > 5000000) {
        echo "<script>
                    alert('tidak boleh lebih dari 5mb');
                </script>";
        return false;
    }

    //lolos pengecekan, gambar siap di upload
    //generate nama gambar baru

    $namaFileBaru = uniqid();
    $namaFileBaru .= '.';
    $namaFileBaru .= $ekstensiGambar;


    move_uploaded_file($tmpName, '../../../assets/img/database/' . $namaFileBaru);

    return $namaFileBaru;
}

function hapus($id) {
    global $conndata;
    mysqli_query($conndata, "DELETE FROM senbud WHERE id = $id");
    return mysqli_affected_rows($conndata);
}

function edit($data) {
    global $conndata;
    $id = $data["id"];
    $nama_senbud = htmlspecialchars($data["nama_senbud"]);
    $kategori = htmlspecialchars($data["kategori"]);
    $alamat = htmlspecialchars($data["alamat"]);
    $kontak = htmlspecialchars($data["kontak"]);
    $latitude = htmlspecialchars($data["latitude"]);
    $longitude = htmlspecialchars($data["longitude"]);

    $gambarLama = htmlspecialchars($data["gambarLama"]);
    //cek apakah user pilih gambar baru atau tidak
    if( $_FILES['gambar']['error'] === 4 ) {
        $gambar = $gambarLama;
    } else {
        $gambar = upload();
    }

    $query = "UPDATE senbud SET 
                nama_senbud = '$nama_senbud',
                kategori = '$kategori',
                alamat = '$alamat',
                kontak = '$kontak',
                gambar = '$gambar',
                latitude = '$latitude',
                longitude = '$longitude'
            WHERE id = $id
                ";
    mysqli_query($conndata, $query);

    return mysqli_affected_rows($conndata);
}
?>