variable "image_id" {
    type = string 
    default = "AMI0898989"
}

variable "instance_type" {
    type = string 
    default = "t3.micro"
}

variable "tags" {
    default = {
        name = "expense"
        key = "join"
    }
}
variable "allow_cidr" {
    type = list(string) 
    default = ["0.0.0.0/0"]
  
}

