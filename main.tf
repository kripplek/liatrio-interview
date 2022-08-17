resource "aws_iam_user" "users_employees" {
  count = length(var.username)
  name  = element(var.username, count.index)
  path  = "/employees/"
}

resource "aws_iam_user" "user_au_tf" {
  name = var.au_tf_user
  path = "/au/"
}
locals {
  common_prefix = "${var.application}-${var.environment}"
}
