
variable "ebs_size" {
  description = "The size of the drive in GiBs."
  type        = number
}

variable "availability_zone" {
  description = "The AZ where the EBS volume will exist."
  type        = string
}
variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(any)
}

variable "encrypted" {
  description = "If true, the disk will be encrypted."
  type        = bool
}
variable "iops" {
  description = "The amount of IOPS to provision for the disk. Only valid for type of io1 or io2."
  type        = string
}
variable "multi_attach_enabled" {
  description = "Specifies whether to enable Amazon EBS Multi-Attach. Multi-Attach is supported exclusively on io1 volumes."
  type        = bool
}
variable "snapshot_id" {
  description = "A snapshot to base the EBS volume off of."
  type        = string
}
variable "type" {
  description = " The type of EBS volume. Can be 'standard', 'gp2', 'io1', 'io2', 'sc1' or 'st1' (Default: 'gp2')."
  type        = string
}
variable "kms_key_id" {
  description = "The ARN for the KMS encryption key. When specifying kms_key_id, encrypted needs to be set to true."
  type        = string
  default     = null
}
variable "device_name" {
  description = "The device name to expose to the instance (for example, /dev/sdh or xvdh). "
  type        = string
}
variable "instance_id" {
  description = "ID of the Instance to attach to"
  type        = string
}
variable "force_detach" {
  description = "Set to true if you want to force the volume to detach. "
  type        = bool
  default     = false
}
variable "skip_destroy" {
  description = " Set this to true if you do not wish to detach the volume from the instance to which it is attached at destroy time, and instead just remove the attachment from Terraform state."
  type        = bool
  default     = false
}
