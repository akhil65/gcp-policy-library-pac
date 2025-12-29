resource "google_storage_bucket" "my_test_bucket" {
  name          = "my-policy-test-bucket-unique-name"
  location      = "europe-west1"
  force_destroy = true
}