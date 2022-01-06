data "external" "external_ip" {
  program   = [
    "/bin/bash", "${path.module}/scripts/extract_ip.sh"
  ]
}

output "my_external_ip" {
  value = data.external.external_ip.result.my_ip
}
