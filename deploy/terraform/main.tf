resource "google_cloudbuild_trigger" "api-build-trigger" {
  included_files = [
      "src/api/**"
    ]
  trigger_template {
    branch_name = "${var.branch}"
    repo_name   = "github_dgoetsch_just-you-and-me"
  }

    filename = "/mnt/terraform/cloudbuild/api.yml"
}

//trigger (cloudbuild)
//runtime (cloudrun)
//(container registry)