output "instance_id" {
    value = aws_instance.webserver.id
}  ## checking id

output "public_ip" {
    value = aws_instance.webserver.public_ip
    ## checking public ip
}