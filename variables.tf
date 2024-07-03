
variable "environment01" {
  type = string
}
variable "location01" {
  type    = string
  default = "us-west-2"
}
variable "location02" {
  type    = string
  default = "us-west-1"
}
variable "location03" {
  type    = string
  default = "us-east-2"
}
variable "location04" {
  type    = string
  default = "us-east-1"
}
variable "shared_account_id" {
  type = string
}
variable "shared_subnets_names" {
  type = set(string)
}
variable "spoke_account_id" {
  type = string
}