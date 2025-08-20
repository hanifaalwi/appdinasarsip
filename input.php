<?php
require 'vendor/autoload.php';
include 'koneksi.php';
include 'minio.php';

use Aws\S3\S3Client;
use Aws\Exception\AwsException;

// Ambil data dari form
$Nama     = $_POST['Nama'];
$NIP      = $_POST['NIP'];
$Jabatan  = $_POST['Jabatan'];
$Bidang   = $_POST['Bidang'];
$Kabid    = $_POST['Kabid'];
$Link     = $_POST['Link'];
$Periode  = $_POST['Periode'];
$status   = $_POST['status'];
$statuss   = $_POST['statuss'];
$tanggal  = $_POST['tanggal'];

$namaFile = $_FILES['SKP']['name'];
$tmpFile  = $_FILES['SKP']['tmp_name'];
$ext      = pathinfo($namaFile, PATHINFO_EXTENSION);

// Validasi file harus PDF
if (strtolower($ext) != 'pdf') {
    die("❌ Hanya file PDF yang diizinkan.");
}

// Buat nama unik untuk file
$namaBaru = uniqid() . '_' . $namaFile;

$s3 = getMinioClient();

try {
    // Upload ke MinIO bucket "uploads"
    $s3->putObject([
        
        'Bucket'     => $_ENV['APP_MINIO_BUCKET_NAME'],
        'Key'        => $namaBaru,
        'SourceFile' => $tmpFile,
        'ACL'        => 'public-read',
        'ContentType' => 'application/pdf',           // ← ini penting
        'ContentDisposition' => 'inline'              // ← ini yang bikin preview, bukan download
    ]);

    // Simpan info file (namaBaru) ke database
   $url = $s3->getObjectUrl('uploads', $namaBaru);

    // mysqli_query($connect, "INSERT INTO data VALUES (
    //  '$Nama', '$NIP', '$Jabatan', '$Bidang', '$Kabid',
    //     '$url', '$Link', '$Periode', '$status', '$statuss','', '$tanggal'
    // )");

    $sql = "INSERT INTO data (
    Nama, NIP, Jabatan, Bidang, Kabid,
    SKP, Link, Periode, status, statuss, komentar, tanggal
) VALUES (
    '$Nama', '$NIP', '$Jabatan', '$Bidang', '$Kabid',
    '$url', '$Link', '$Periode', '$status', '$statuss', '', '$tanggal'
)";

if (!mysqli_query($connect, $sql)) {
        die("❌ Gagal insert ke database: " . mysqli_error($connect));
    }
    header("Location: madya.php?berhasil=1");
    exit();

} catch (AwsException $e) {
    die("❌ Gagal upload ke MinIO: " . $e->getMessage());
}
?>

