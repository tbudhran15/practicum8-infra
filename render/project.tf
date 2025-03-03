resource "render_project" "tera" {
  name = "P466-Spring 2025 m"

  environments = {
    "development" = {
      name             = "development"
      protected_status = "unprotected"
    },
    "staging" = {
      name             = "staging"
      protected_status = "protected"
    }
  }
}
