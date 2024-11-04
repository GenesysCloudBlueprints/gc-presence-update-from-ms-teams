resource "genesyscloud_flow" "inbound_call_flow" {
  filepath = "${path.module}/ms-teams-integrations-presence-trigger.yaml"
  file_content_hash = filesha256("${path.module}/ms-teams-integrations-presence-trigger.yaml")
  substitutions = {
    flow_name               = "Microsoft Teams Integration Presence Trigger"
    division                = "Home"
    default_language        = "en-us"
    data_action_category    = var.data_action_category
    data_action_name_1      = var.data_action_name_1
    data_action_name_2      = var.data_action_name_2
    data_table              = var.data_table_name
  }
}