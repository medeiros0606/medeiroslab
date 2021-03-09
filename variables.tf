variable "tenancy_ocid" {
  type        = string
  default     = "ocid1.tenancy.oc1..aaaaaaaasxfdij6tkfpjsplqvb4ry7suyrwbrmktmo5eahtwbli5esjkqaka"
}

variable "user_ocid" {
  type        = string
  default     = "ocid1.user.oc1..aaaaaaaatfzysovnkzqgajekwvpvkt5r4e2wrassoztenuvsr5fn6i7twu5q"
}

variable "fingerprint" {
  type        = string
  default     = "a8:53:ae:fe:53:00:be:8e:db:3c:fa:5f:ea:cb:f2:b9"
}

variable "private_key_path"  { 
  type        = string
  default     = "/home/medeiros/workspace/Gol/oraclekey.pem"
}

variable "region" {
  type        = string
  default     = "sa-saopaulo-1"
}

variable "num_instances" {
  default = "10"
}

variable "subnet_ocids" {
  default= "subnet03042305.vcn03042305.oraclevcn.com"
}