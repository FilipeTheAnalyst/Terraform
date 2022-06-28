provider "google" {
  project = "taxi-rides-ny-348613"
  region = "europe-west6"
  zone = "europe-west6-a"
  // credentials = file(var.credentials)  # Use this if you do not want to set env-var GOOGLE_APPLICATION_CREDENTIALS
}

resource "google_compute_instance" "my_server"{
    name = "my-gcp-server"
    machine_type = "f1-micro"
    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-9"
        }
    }
    network_interface {
        network = "default" // this enables private IP address
        access_config{} // this enables public IP address
    }
}
