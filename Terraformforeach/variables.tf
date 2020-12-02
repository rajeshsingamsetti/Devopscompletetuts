# variable "buckets" {
#     type = list(string)
#     default = ["devopsb13bucket4","devopsb13bucket1", "devopsb13bucket2", "devopsb13bucket3"]
# }

# variable "buckets2" {
#     type = list(string)
#     default = ["devopsb13bucket14","devopsb13bucket11", "devopsb13bucket12", "devopsb13bucket13"]
# }

# locals {
#   #images = { for v in var.images : v => v }
#   mybucks = {
#       for bucket in var.buckets:
#            bucket => bucket
#   }
# }

# resource "aws_s3_bucket" "bucks1" {
#   count = "${length(var.buckets2)}"
#   bucket = var.buckets2[count.index]
#   acl    = "private"
# }


