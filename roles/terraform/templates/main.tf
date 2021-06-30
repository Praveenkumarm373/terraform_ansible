variable "name" {
  type = string
  default= "{{ name }}"
}

variable "emp" {
  type = string
  default= "{{ emp }}"

}

resource "null_resource" "example2" {
  provisioner "local-exec" {
    command = "echo ${var.name} > completed.txt"
  }
}

locals {
  message = "${var.name}, as ${var.name}"
}

output "message" {
  value = local.message
}

