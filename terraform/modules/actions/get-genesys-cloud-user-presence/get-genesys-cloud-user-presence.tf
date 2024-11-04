/*
  Creates the action
*/
resource "genesyscloud_integration_action" "action-1" {
  name                   = var.action_name
  category               = var.action_category
  integration_id         = var.integration_id
  contract_input = jsonencode({
    "type" = "object",
    "properties" = {
      "USER_ID" = {
        "type" = "string"
      }
    }
  })
  contract_output = jsonencode({
    "type" = "object",
    "properties" = {
      "systemPresence" = {
        "type" = "string"
      }
    }
  })
  config_request {
    # Use '$${' to indicate a literal '${' in template strings. Otherwise Terraform will attempt to interpolate the string
    # See https://www.terraform.io/docs/language/expressions/strings.html#escape-sequences
    request_url_template = "/api/v2/users/$${input.USER_ID}/presences/purecloud"
    request_type         = "GET"
    request_template     = "$${input.rawRequest}"
    headers = {}
  }
  config_response {
    translation_map = {
      systemPresence = "$.['presenceDefinition'].systemPresence"
    }
    translation_map_defaults = {
      systemPresence = "Not Found"
    }
    success_template = "{\"systemPresence\": $${systemPresence}}"
  }
}
