variable "name" {
  type        = string
  description = "Name used to tag resources"
}

variable "environment" {
  type        = string
  description = "Environment used to tag resources"
}

variable 'monitoring"
  type        = bool
  default     = true
  description = "Enable EC2 advanced monitoring"
}


variable "ami" {
 type          = string
 description   = "The AMI ID used to create the instance."
}



variable "tags" {
  type        =map(string)
  description = "Tags"
}  
variable "associate_public_ip_addness"{
  type        = bool
  default     = false
  description ="Associate public IP address"
}

variable "subnet list" {
  type        =string
  description = "Subnet id where the instance will be launched'
}

variable "inbound ports" 
  type        =list (any)
  description ="inbount ports to be add on security group"
}

variable "instance_ type" {
  type        = string
description   ="Instance type to launch on ec2"
}

variable "vpc id" {
  type        =string
  description = "VPC ID when the instance will be created'
}

variable'encrypted" {
  type       = bool
  default    = true
}

variable "volume_type" {
  type       =string
default      ="gp3"
}  

variable "root volume size"
  type       =string
  default    = "40"
}

variable "volume_type" {
  type      = string
  default   = "/dev/sdf"
    } 

variable "root_volume size" { 
  type       = string
}  

variable "delete_on_termination" { 
  type       = bool
  default    = false
}

variable"kms_key_id" {
  type      = string
}  
