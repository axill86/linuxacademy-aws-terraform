output "Bucket Name" {
  value = "${module.storage.bucket_name}"
}
output "Public Instance IDs" {
  value = "${module.compute.server_id}"
}

output "Public Instance IPs" {
  value = "${module.compute.server_ip}"
}
