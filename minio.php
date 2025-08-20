<?php
use Aws\S3\S3Client;

require 'vendor/autoload.php';

function getMinioClient() {
    return new S3Client([
        'version' => 'latest',
        'region' => 'us-east-1',
        'bucket' => $_ENV['APP_MINIO_BUCKET_NAME'],
        'endpoint' => 'http://'.$_ENV['APP_MINIO_ENDPOINT'].':'.$_ENV['APP_MINIO_PORT'],
        'use_path_style_endpoint' => true,
        'credentials' => [
            'key'    => $_ENV['APP_MINIO_ACCESS_KEY'],
            'secret' => $_ENV['APP_MINIO_SECRET_KEY'],
        ],
    ]);
}

