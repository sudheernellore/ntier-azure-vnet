variable "rgdetails" {
    type    = object(
        {
            name     = string
            location = string
        }
    )
    default = {
    name = "myrg"
    location= "westus"
    }
}


variable "vnetdetails" {
    type    = object(
        {
            name = string
            address_space = list(string)
        }
    )
    default = {
        name          = "myvnet"
        address_space = ["10.0.0.0/16"]
    }
  
}



variable "subnet_details" {
    type = object(
        {
        names = list(string)
        }
        )
    default = {
    names = ["a","b","c","d","e","f"]
    }
}
