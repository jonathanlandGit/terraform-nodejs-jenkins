resource "aws_key_pair" "blah" {
  key_name   = "blah"
  public_key = file("${var.PATH_TO_PUBLIC_KEY}")
  lifecycle {
    ignore_changes = [public_key]
  }
}
