
resource "aws_db_subnet_group" "this" {
  for_each   = var.db_clusters
  name       = "${each.key}-subnet-group"
  subnet_ids = each.value.subnet_ids
}

resource "aws_rds_cluster" "this" {
  for_each               = var.db_clusters
  cluster_identifier     = each.key
  engine                 = "aurora-postgresql"
  engine_version         = each.value.engine_version
  master_username        = each.value.master_username
  master_password        = each.value.master_password
  db_subnet_group_name   = aws_db_subnet_group.this[each.key].name
  vpc_security_group_ids = each.value.vpc_security_group_ids
  skip_final_snapshot    = true
  backup_retention_period = 7
}
