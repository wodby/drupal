$databases['default']['default'] = [
    'host' => '{{ getenv "DB_HOST" "mariadb" }}',
    'database' => '{{ getenv "DB_NAME" "drupal" }}',
    'username' => '{{ getenv "DB_USER" "drupal" }}',
    'password' => '{{ getenv "DB_PASSWORD" "drupal" }}',
    'driver' => '{{ getenv "DB_DRIVER" "mysql" }}',
];

$config_directories['sync'] = '/var/www/files/config/sync_dir';
$settings['trusted_host_patterns'] = array(
    {{ getenv "DRUPAL_TRUSTED_HOST_PATTERNS" "'\\.localhost$', '\\.local$', '\\.loc$'" }}
);