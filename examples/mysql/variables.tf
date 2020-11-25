# Variables for providing to module fixture codes

### aws credential
variable "aws_account_id" {
  description = "The aws account id for the tf backend creation (e.g. 857026751867)"
}
### network
variable "aws_region" {
  description = "The aws region to deploy"
  type        = string
  default     = "us-east-1"
}

variable "azs" {
  description = "A list of availability zones for the vpc to deploy resources"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "cidrs" {
  description = "The list of vpc CIDR blocks"
  type        = list(string)
}

### rdb cluster (aurora-mysql)

#  [CAUTION] Changing the snapshot ID. will force a new resource.

variable "aurora_cluster" {
  description = "RDS Aurora for mysql cluster definition"
  type        = map
  default     = {}
}

variable "aurora_instances" {
  description = "RDS Aurora for mysql instances definition"
  default     = []
}

### description
variable "name" {
  description = "The logical name of the module instance"
  type        = string
  default     = "aurora"
}

### tags
variable "tags" {
  description = "The key-value maps for tagging"
  type        = map(string)
  default     = {}
}
