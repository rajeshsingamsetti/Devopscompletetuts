# resource "aws_s3_bucket" "bucks" {
#   for_each = toset(var.buckets)
#   bucket = "${each.key}"
#   acl    = "private"
# }