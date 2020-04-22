// Provider details

provider "google" {
  project     = "${var.project}"
  region      = "${var.region}"
  zone        = "${var.zone}"

}


resource "google_compute_instance" "default" {
  count = "${var.num_nodes}"
  name = "${var.name}"  
  machine_type = "${var.machine_type}"

 
  boot_disk {
    auto_delete = "${var.disk_auto_delete}"

    initialize_params {
      image = "${var.image}"
      size = "${var.disk_size_gb}"
      type  = "${var.disk_type}"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    scopes = []
  }
