
variable "bucket_name" {
  type    = string
  default = "nitheesh-terraformxyxsss"
}

variable "create_bucket" {
  description = "Controls if S3 bucket should be created"
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "(Optional, Default:false ) A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable."
  type        = bool
  default     = false
}

variable "acceleration_status" {
  description = "(Optional) Sets the accelerate configuration of an existing bucket. Can be Enabled or Suspended."
  type        = string
  default     = null
}

variable "request_payer" {
  description = "(Optional) Specifies who should bear the cost of Amazon S3 data transfer. Can be either BucketOwner or Requester. By default, the owner of the S3 bucket would incur the costs of any data transfer. See Requester Pays Buckets developer guide for more information."
  type        = string
  default     = null
}

variable "acl" {
  type    = string
  default = "private"
}

variable "versioning" {
  type    = bool
  default = true
}

variable "mfa_delete" {
  type    = bool
  default = true
}

variable "tags" {
  description = "tags to set on the bucket."
  type        = map
  default = {
    businessline = "test1"
    product      = "test2"
    businessline = "test3"
    application  = "test4"
    environment  = "Dev"
  }
}

variable "opt_tags" {
  description = "tags to set on the bucket."
  type        = map
  default = {
    Name1 = "test5"
    Name2 = "test6"
    Name3 = "test7"
    Name4 = "test8"
    Name5 = "test9"
  }
}

/*variable "cors_rule" {
  description = "List of maps containing rules for Cross-Origin Resource Sharing."
  type        = list(any)
  default = [
    {
      allowed_methods = ["PUT", "POST"]
      allowed_origins = ["https://modules.tf", "https://terraform-aws-modules.modules.tf"]
      allowed_headers = ["*"]
      expose_headers  = ["ETag"]
      max_age_seconds = 3000
      allowed_methods = ["PUT"]
      allowed_origins = ["https://example.com"]
      allowed_headers = ["*"]
      expose_headers  = ["ETag"]
      max_age_seconds = 3000
    }
  ]
}
*/

variable "website" {
  description = "Map containing static web-site hosting or redirect configuration."
  default = {
    index_document = "index.html"
    error_document = "error.html"
    routing_rules  = <<EOF
    [{
        "Condition": {
            "KeyPrefixEquals": "img/"
        },
        "Redirect": {
            "ReplaceKeyPrefixWith": "images/"
        }
    }]
    EOF
    /*redirect_all_requests_to = {
      HostName = "www.example.com"
      Protocol = "http"
    }
    */
  }
}
