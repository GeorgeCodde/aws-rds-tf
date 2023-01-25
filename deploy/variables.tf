variable "security_group" {
  description = "security_group"
  type = string
}

//variable "vpc" {
//  description = "VPC ID"
//  type = string
//}

//variable "subnet_b" {
//  description = "private b subnet"
//  type = string
//}

//variable "subnet_a" {
//  description = "private a subnet"
//  type = string
//}

variable "db_instance_id" {
  description = "db_instance_id"
  type = string
}

variable "db_name" {
  description = "db_instance_name"
  type = string
}

variable "db_instance_type" {
  description = "db_instance_type"
  type = string
}

variable "db_instance_storage" {
  description = "db_instance_storage"
  type = number

}

variable "db_instance_engine" {
  description = "db_instance_engine"
  type = string
}

variable "db_instance_engine_version" {
  description = "string"
  type = string
}

variable "db_instance_skip_final_snapshot" {
  description = "db_instance_skip_final_snapshot"
  type = string
}

variable "db_instance_publicly_accessible" {
  description = "db_instance_publicly_accessible"
  type = string
}

variable "db_username" {
  description = "db_username"
  type = string
}
