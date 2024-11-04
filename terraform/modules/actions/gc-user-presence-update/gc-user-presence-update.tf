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
      },
      "PRESENCE_DEFINITION_ID" = {
        "type" = "string"
      }
    }
  })
  contract_output = jsonencode({
    "type" = "object",
    "properties" = {}
  })
  config_request {
    # Use '$${' to indicate a literal '${' in template strings. Otherwise Terraform will attempt to interpolate the string
    # See https://www.terraform.io/docs/language/expressions/strings.html#escape-sequences
    request_url_template = "/api/v2/users/$${input.USER_ID}/presences/purecloud"
    request_type         = "PATCH"
    request_template     = "{\n  \"presenceDefinition\": {\n    \"id\": \"$${input.PRESENCE_DEFINITION_ID}\"\n  },\n  \"primary\": true\n}"
    headers = {
      "Content-Type": "application/json"
      "UserAgent": "PureCloudIntegrations/1.0"
    }
  }
  config_response {
    translation_map = {}
    translation_map_defaults = {}
    success_template = "$${rawResult}"
  }
}
