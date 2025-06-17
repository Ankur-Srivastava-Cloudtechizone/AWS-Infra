resource "aws_instance" "ec2_instance" {
  for_each = var.instances

  ami                         = each.value.ami
  instance_type               = each.value.instance_type
  subnet_id                   = data.aws_subnet.selected[each.key].id
  vpc_security_group_ids      = [data.aws_security_group.selected[each.key].id]
  associate_public_ip_address = each.value.associate_public_ip
  key_name                    = each.value.key_name

  tags = merge(
    {
      Name        = "${var.environment}-${each.key}"
      Environment = var.environment
    },
    var.common_tags
  )
}
