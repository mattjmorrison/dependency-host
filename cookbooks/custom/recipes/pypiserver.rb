
pypiserver do
  nginx_dir node.nginx.dir
  server_name node.pypiserver.server_name
  ssl_key node.pypiserver.ssl_key
  ssl_crt node.pypiserver.ssl_crt
  passwd_file node.pypiserver.passwd_file
end
