resource "aws_dynamodb_table" "deploy_and_monitor_global_table" {
  hash_key         = "id"
  name             = "deploy_and_monitor"
  billing_mode     = "PAY_PER_REQUEST"
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  attribute {
    name = "id"
    type = "S"
  }

  point_in_time_recovery {
    enabled = true
  }

  server_side_encryption {
   enabled = true 
  }

  replica {
    region_name = "eu-west-2"
  }
  replica {
    region_name = "eu-south-1"
  }
}