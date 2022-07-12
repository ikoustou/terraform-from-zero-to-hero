output "aws_ami_output" {
  value = aws_instance.ami
  description = "return instance ami id"
}