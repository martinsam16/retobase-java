variable "prefix" {
  description = "Prefijo de los recursos"
  default     = "sadeb"
}

variable "location_acr" {
  description = "Region para aprovisionar los recursos en AKS"
  default     = "Brazil South"
}

variable "sku" {
  default = "Standard"
  description = "sku"
}