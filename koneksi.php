<?php
require_once './vendor/autoload.php';

try {
    $dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
    $dotenv->load();

    // Tambahan untuk pastikan _ENV selalu terisi
    foreach ($_ENV as $key => $value) {
        putenv("$key=$value");
        $_SERVER[$key] = $value;
        $_ENV[$key] = $value;
    }
} catch (Exception $e) {
    die("Cannot load .env file");
}

// Atur error reporting berdasarkan APP_ENV & APP_DEBUG
$env = $_ENV['APP_ENV'] ?? 'production';
$debug = filter_var($_ENV['APP_DEBUG'] ?? false, FILTER_VALIDATE_BOOLEAN);
if ($env === 'development' && $debug) {
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);
    echo "Debug mode is ON. Errors will be displayed.";
} else {
    ini_set('display_errors', 0);
    ini_set('display_startup_errors', 0);
    error_reporting(0);
}

// Koneksi database (mysqli)
$connect = mysqli_connect(
    $_ENV['APP_HOST'],
    $_ENV['APP_USER'],
    $_ENV['APP_PASS'],
    $_ENV['APP_NAME'],
    $_ENV['APP_PORT']
);

// Cek koneksi
if (!$connect) {
    if ($debug) {
        die("Koneksi gagal: " . mysqli_connect_error());
    } else {
        die("❌ Koneksi database gagal: " . mysqli_connect_error());
    }
}
?>