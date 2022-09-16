upstream fastcgi_backend {
    server ${COMPOSE_PROJECT_NAME}_phpfpm:9000;
}

server {
    listen 80;
    server_name ${PROJECT_URI};
    root /var/www/html/public;

    location / {
    try_files $uri /index.php$is_args$args;
    }

    location ~ ^/index\.php(/|$) {
    fastcgi_pass fastcgi_backend;
    fastcgi_split_path_info ^(.+\.php)(/.*)$;
    include fastcgi_params;
    fastcgi_param SCRIPT_FILENAME $realpath_root$fastcgi_script_name;
    fastcgi_param DOCUMENT_ROOT $realpath_root;
    internal;
    }

    location ~ \.php$ {
    return 404;
    }

    error_log /var/log/nginx/project_error.log;
    access_log /var/log/nginx/project_access.log;
}
