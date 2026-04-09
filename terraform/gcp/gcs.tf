resource "google_storage_bucket" "terragoat_website" {
  name          = "terragot-${var.environment}"
  force_destroy = true
  labels = {
    git_commit           = "5c6b5d60a8aa63a5d37e60f15185d13a967f0542"
    git_file             = "terraform__gcp__gcs_tf"
    git_last_modified_at = "2021-05-02-10-06-10"
    git_last_modified_by = "nimrodkor"
    git_modifiers        = "nimrodkor"
    git_org              = "shaharsa"
    git_repo             = "terragoat"
    yor_trace            = "bd00cd2e-f53f-4daf-8d4d-74c47846c1cc"
    yor_name             = "terragoat_website"
  }
}

resource "google_storage_bucket_iam_binding" "allow_public_read" {
  bucket  = google_storage_bucket.terragoat_website.id
  members = ["allUsers"]
  role    = "roles/storage.objectViewer"
}