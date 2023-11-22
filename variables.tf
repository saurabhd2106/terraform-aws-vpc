variable "cidr_block" {

  type = string

}

variable "subnets" {

  type = map(object({
    cidr_block = string
  }))
  
}

variable "nacl" {
  type = any
}

variable "vpc_name" {

  type = string

}

variable "ami_image_name" {

  type = string

}

variable "instance_type" {

  type = string

}

variable "ingress" {

  type = any
  
}