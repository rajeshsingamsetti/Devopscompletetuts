# resource "aws_s3_bucket" "buckscount" {
#   count = "${length(var.buckets2)}"
#   bucket = var.buckets2[count.index]
#   acl    = "private"
# }