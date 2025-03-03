terraform {
  required_providers {
    render = {
      source  = "render-oss/render"
      version = "1.3.2"
    }
  }
}

provider "render" {
  api_key  = "$Env:RENDER_API_KEY"
  owner_id = "$Env:RENDER_OWNER_ID"
}
