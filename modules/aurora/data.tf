# data "aws_subnet" "aurora_subnet" {
#   for_each = toset(var.subnet_names)
#   filter {
#     name   = "tag:Name"
#     values = [each.key]
#   }
# }

# data "aws_security_group" "aurora_sg" {
#   for_each = toset(var.security_group_names)
#   filter {
#     name   = "tag:Name"
#     values = [each.key]
#   }
# }