module "s3" {
  source      = "/Users/poojani/Dropbox/2020/Learning/Terraform/Terraform-Modules/modules/aws/s3"
  bucket_name = var.bucket_name
  acl         = var.acl
  versioning  = var.versioning

  tags = { for k, v in merge(var.tags, var.opt_tags) : k => v }
  /*website = { for k, v in var.website : k => v } */
  website = var.website

  /*cors_rule = { for k, v in var.cors_rule : k => v } */

}
