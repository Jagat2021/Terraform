resource "aws_iam_user" "myusers" {
  for_each = toset(["Jagat", "Ragua", "Rahul", "Spider"])
  name     = each.key

  tags = {
    "Dept" = "technology"
  }

}
