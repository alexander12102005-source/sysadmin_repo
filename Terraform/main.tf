terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  token     = var.yc_token
  cloud_id  = var.yc_cloud_id
  folder_id = var.yc_folder_id
  zone      = "ru-central1-a"
}

resource "yandex_compute_instance" "proxy_nginx" {
  name        = "proxy-nginx"
  platform_id = "standard-v1"
  resources { cores = 2; memory = 2 }
  boot_disk {
    initialize_params { image_id = var.image_id; size = 10 }
  }
  network_interface { subnet_id = var.subnet_id; nat = true }
  metadata = { ssh-keys = "debian:${file("~/.ssh/id_ed25519.pub")}" }
}

resource "yandex_compute_instance" "backend_nginx_1" {
  name        = "backend-nginx-1"
  platform_id = "standard-v1"
  resources { cores = 2; memory = 2 }
  boot_disk {
    initialize_params { image_id = var.image_id; size = 10 }
  }
  network_interface { subnet_id = var.subnet_id; nat = true }
  metadata = { ssh-keys = "debian:${file("~/.ssh/id_ed25519.pub")}" }
}

resource "yandex_compute_instance" "backend_nginx_2" {
  name        = "backend-nginx-2"
  platform_id = "standard-v1"
  resources { cores = 2; memory = 2 }
  boot_disk {
    initialize_params { image_id = var.image_id; size = 10 }
  }
  network_interface { subnet_id = var.subnet_id; nat = true }
  metadata = { ssh-keys = "debian:${file("~/.ssh/id_ed25519.pub")}" }
}
