variable "pscloud_env" {}
variable "pscloud_company" {}
variable "pscloud_purpouse" {}

variable "pscloud_organization_units" {
    type = map(object({
        name        = string
        parent_id   = string  
    }))
    default = {          
    }
}

variable "pscloud_accounts" {
    type = map(object({
        name                            = string 
        email                           = string
        iam_user_access_to_billing      = string
        parent_id                       = string
    }))
    default = {        
    }
}