/*
  Creates the datatable
*/
resource "genesyscloud_architect_datatable" "ms_teams_presence_mapping" {
  name        = "MsTeamsPresenceMappings"
  properties {
    name  = "key"
    type  = "string"
    title = "TeamsPresenceKey"
  }
  properties {
    name  = "GenesysCloudPresenceId"
    type  = "string"
    title = "GenesysCloudPresenceId"
  }
}