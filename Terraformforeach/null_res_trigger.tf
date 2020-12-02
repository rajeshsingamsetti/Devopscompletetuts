#     variable "buckets" {
#     type = list(string)
#     default = ["devopsb13bucket4","devopsb13bucket1", "devopsb13bucket2", "devopsb13bucket3","devopsb13bucket4","devopsb13bucket5"]
# }
# resource "null_resource" "cluster" {
# count = "${length(var.buckets)}"
# connection {
#     host = "${length(var.buckets)}"
#   }
# triggers = {
#     bucketname = var.buckets[count.index]
#   }
}