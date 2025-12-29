resource "google_storage_bucket" "my_test_bucket" {
  name          = "my-policy-test-bucket-unique-name"
  location      = "US"
  force_destroy = true
}