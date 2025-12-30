resource "google_storage_bucket" "my_test_bucket" {
  name          = "my-policy-test-bucket-unique-name"
  location      = "US"
  force_destroy = true
}


resource "google_compute_instance" "expensive_server" {
  name         = "budget-breaker"
  machine_type = "n2-standard-16"  # <--- This is a generic high-cpu machine
  zone         = "us-central1-a"
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
  }
}