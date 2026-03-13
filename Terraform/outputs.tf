output "proxy_nginx_external_ip" {
  value = yandex_compute_instance.proxy_nginx.network_interface.0.nat_ip_address
}
output "backend_nginx_1_external_ip" {
  value = yandex_compute_instance.backend_nginx_1.network_interface.0.nat_ip_address
}
output "backend_nginx_2_external_ip" {
  value = yandex_compute_instance.backend_nginx_2.network_interface.0.nat_ip_address
}
