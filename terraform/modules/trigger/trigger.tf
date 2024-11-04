resource "genesyscloud_processautomation_trigger" "example-trigger" {
  name       = "Microsoft Teams Integration Presence Trigger"
  topic_name = "v2.users.{id}.integrationpresence"
  enabled    = true
  target {
    id   = var.workflow_id
    type = "Workflow"
    workflow_target_settings {
      data_format = "TopLevelPrimitives"
    }
  }
  match_criteria = jsonencode([
    {
      "jsonPath" : "source",
      "operator" : "Equal",
      "value" : "MICROSOFTTEAMS"
    }
  ])
}