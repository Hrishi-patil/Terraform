variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
   default = "us-east-1"
      }

variable "Security_Group" {
        type = list 
        default = ["sg-455566","sg-666555","sg-666555"]
           }

variable "AMIS" {
      type = map
      default = {
       us-east-1 = "ami-0f-40205556"
       us-east-2 = "ami-046665555"
       us-west-2 = "ami-5666655555"
          }
       }
