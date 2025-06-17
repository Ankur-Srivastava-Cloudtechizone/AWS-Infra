resource "aws_rds_cluster" "this" {
  for_each               = var.db_clusters

  engine                 = "aurora-postgresql"
  engine_version         = each.value.engine_version
  master_username        = each.value.master_username
  master_password        = each.value.master_password
  db_subnet_group_name   = aws_db_subnet_group.this[each.key].name
  vpc_security_group_ids = each.value.vpc_security_group_ids

  backup_retention_period        = 7
  preferred_backup_window        = "07:00-09:00"
  preferred_maintenance_window   = "sun:23:00-mon:01:30"
  storage_encrypted              = true
  deletion_protection            = true
  skip_final_snapshot            = false

  tags = merge(
    var.common_tags,
    {
      Name        = each.key
      Environment = var.environment
    }
  )
}

resource "aws_db_subnet_group" "this" {
  for_each   = var.db_clusters
  name       = "${each.key}-subnet-group"
  subnet_ids = each.value.subnet_ids

  tags = merge(
    var.common_tags,
    {
      Name = "${each.key}-subnet-group"
    }
  )
}
