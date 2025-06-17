data "aws_subnet" "selected" {
  for_each = var.instances

  filter {
    name   = "tag:Name"
    values = [each.value.subnet_name]
  }
}

data "aws_security_group" "selected" {
  for_each = var.instances

  filter {
    name   = "tag:Name"
    values = [each.value.security_group_name]
  }
}
