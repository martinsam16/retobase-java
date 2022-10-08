variable "prefix" {
  description = "Prefijo de los recursos"
  default     = "retoibm"
}

variable "location_db" {
  description = "Region para aprovisionar los recursos en AKS"
  default     = "Brazil South"
}

variable "user_db" {
  description = "User database"
  default = "retoibm"
}
variable "pssw_db" {
//  https://docs.microsoft.com/en-us/previous-versions/azure/jj943764(v=azure.100)?redirectedfrom=MSDN
  description = "Password database"
  default = "R3T@iBm$"
}

variable "collation_db" {
  description = "Collation for db"
  default = "es-ES"
}