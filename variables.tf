  
variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-b"
}

variable "network_cidr" {
  default = "10.127.0.0/20"
}

variable "name" {
  description = "Name prefix for the nodes"
  default     = "tf-custom"
}

variable "num_nodes" {
  description = "Number of nodes to create"
  default     = 4
}

variable "image_family" {
  default = "centos-7"
}

variable "image_project" {
  default = "centos-cloud"
}

variable "disk_auto_delete" {
  description = "Whether or not the disk should be auto-deleted."
  default     = true
}

variable "disk_type" {
  description = "The GCE disk type. Can be either pd-ssd, local-ssd, or pd-standard."
  default     = "pd-ssd"
}

variable "disk_size_gb" {
  description = "The size of the image in gigabytes."
  default     = 10
}

variable "access_config" {
  description = "The access config block for the instances. Set to [{}] for ephemeral external IP."
  type        = "list"
  default     = []
}

variable "network_ip" {
  description = "Set the network IP of the instance. Useful only when num_nodes is equal to 1."
  default     = ""
}

variable "node_tags" {
  description = "Additional compute instance network tags for the nodes."
  type        = "list"
  default     = []
}

variable "startup_script" {
  description = "Content of startup-script metadata passed to the instance template."
  default     = ":"
}

variable "metadata" {
  description = "Map of metadata values to pass to instances."
  type        = "map"
  default     = {}
}

variable "depends_id" {
  description = "The ID of a resource that the instance group depends on."
  default     = ""
}

variable "service_account_email" {
  description = "The email of the service account for the instance template."
  default     = ""
}

variable "service_account_scopes" {
  description = "List of scopes for the instance template service account"
  type        = "list"

  default = [
    "https://www.googleapis.com/auth/compute",
    "https://www.googleapis.com/auth/logging.write",
    "https://www.googleapis.com/auth/monitoring.write",
    "https://www.googleapis.com/auth/devstorage.full_control",
  ]
}