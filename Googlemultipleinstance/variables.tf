variable "project" {
  default = "speedy-insight-254005"
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-b"
}

variable "num_nodes" {
  description = "Number of nodes to create"
  default     = 4
}

variable "name" {
  default = ["kubernetes master", "kubernetes node1", "kubernetes node2", "kubernetes node3"]
}


variable "machine_type" {
  default = "n1-standard-1"
}

variable "image" {
  description = "This give the what type of image is used"  
  default = "centos-7"
}

variable "disk_type" {
  description = "The GCE disk type. Can be either pd-ssd, local-ssd, or pd-standard."
  default     = "SCSI"
}

variable "disk_size_gb" {
  description = "The size of the image in gigabytes."
  default     = 10
}

variable "disk_auto_delete" {
  description = "Whether or not the disk should be auto-deleted."
  default     = true
}