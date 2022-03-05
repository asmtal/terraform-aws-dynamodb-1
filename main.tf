module "this_label" {
  source     = "r0ck40k/label/generic"
  version    = "0.1.0"
  context    = var.context
  attributes = ["dynamodb", "table", var.name]
}
resource "aws_dynamodb_table" "this" {
  hash_key       = var.hash_key
  range_key      = var.range_key
  name           = module.this_label.id
  billing_mode   = var.billing_mode
  read_capacity  = var.billing_mode == "PROVISIONED" ? var.read_capacity : 0
  write_capacity = var.billing_mode == "PROVISIONED" ? var.write_capacity : 0
  point_in_time_recovery {
    enabled = true
  }
  dynamic "attribute" {
    for_each = var.attributes
    content {
      name = attribute.key
      type = attribute.value
    }
  }
  server_side_encryption {
    enabled     = true
    kms_key_arn = var.kms_arn
  }
}
