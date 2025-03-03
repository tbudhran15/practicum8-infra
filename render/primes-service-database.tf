resource "render_postgres" "primes-service-database" {
  name          = "primes-service-database"
  plan          = "free"
  region        = "oregon"  # Ensure this is a valid Render region
  version       = "16"

  database_name = "primes"
  database_user = "fred"

  environment_id = render_project.p466.environments["development"].id
}
