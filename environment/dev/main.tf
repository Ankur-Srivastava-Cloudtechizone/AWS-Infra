module "ec2" {
  source        = "../../modules/ec2"
  instances     = var.instances
  environment   = var.environment
  common_tags   = var.common_tags
}

module "aurora" {
  source        = "../../modules/aurora"
  db_clusters   = var.db_clusters
  common_tags   = var.common_tags
  environment   = var.environment
}

module "eks" {
  source        = "../../modules/eks"
  eks_clusters  = var.eks_clusters
  common_tags   = var.common_tags
  environment   = var.environment
}

module "ecr" {
  source            = "../../modules/ecr"
  ecr_repositories  = var.ecr_repositories
  common_tags       = var.common_tags
  environment       = var.environment
}

module "cloudfront" {
  source                  = "../../modules/cloudfront"
  cloudfront_distributions = var.cloudfront_distributions
  common_tags             = var.common_tags
  environment             = var.environment
}

module "route53" {
  source           = "../../modules/route53"
  route53_records  = var.route53_records
  common_tags      = var.common_tags
  environment      = var.environment
}

module "s3_backup" {
  source      = "../../modules/s3_backup"
  s3_buckets  = var.s3_buckets
  common_tags = var.common_tags
  environment = var.environment
}

module "etl" {
  source      = "../../modules/etl"
  etl_jobs    = var.etl_jobs
  common_tags = var.common_tags
  environment = var.environment
}
