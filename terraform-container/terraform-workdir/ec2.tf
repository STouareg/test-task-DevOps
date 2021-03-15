resource "aws_instance" "test-task-devops-genesis" {
    ami = "ami-0932440befd74cdba"
    instance_type = "t2.micro"
    associate_public_ip_address = true
    key_name = "test-task-devops-genesis"
    tags = {
        "Name" = "test-task-devops-genesis"
    }
}
