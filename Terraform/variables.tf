variable "yc_token" {
  description = "Yandex Cloud OAuth token"
  type        = string
}
variable "yc_cloud_id" {
  description = "Yandex Cloud ID"
  type        = string
}
variable "yc_folder_id" {
  description = "Yandex Cloud Folder ID"
  type        = string
}
variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}
variable "image_id" {
  description = "Boot disk image ID (Debian 11)"
  type        = string
  default     = "fd8lmueoqum660atdd5r"
}
