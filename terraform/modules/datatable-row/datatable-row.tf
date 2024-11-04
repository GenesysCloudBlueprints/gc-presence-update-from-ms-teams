// Creates the datatable rows

# |   Teams Presence   |   GC Presence   |            GC Presence Id            |
# -------------------------------------------------------------------------------
# |   Available        |   Available     | 6a3af858-942f-489d-9700-5f9bcdcdae9b |
# |   Away             |   Away          | 5e5c5c66-ea97-4e7f-ac41-6424784829f2 |
# |   BeRightBack      |   Away          | 5e5c5c66-ea97-4e7f-ac41-6424784829f2 |
# |   Busy             |   Busy          | 31fe3bac-dea6-44b7-bed7-47f91660a1a0 |
# |   DoNotDisturb     |   Busy          | 31fe3bac-dea6-44b7-bed7-47f91660a1a0 |
# |   Focusing         |   Busy          | 31fe3bac-dea6-44b7-bed7-47f91660a1a0 |
# |   InACall          |   Busy          | 31fe3bac-dea6-44b7-bed7-47f91660a1a0 |
# |   InAMeeting       |   Busy          | 31fe3bac-dea6-44b7-bed7-47f91660a1a0 |
# |   Offline          |   Offline       | ccf3c10a-aa2c-4845-8e8d-f59fa48c58e5 |
# |   OffWork          |   Offline       | ccf3c10a-aa2c-4845-8e8d-f59fa48c58e5 |
# |   Presenting       |   Busy          | 31fe3bac-dea6-44b7-bed7-47f91660a1a0 |


// Available
resource "genesyscloud_architect_datatable_row" "available" {
  datatable_id = var.datatable_id
  key_value    = "Available"
  properties_json = jsonencode({
    "GenesysCloudPresenceId" = "6a3af858-942f-489d-9700-5f9bcdcdae9b"
  })
}

// Away
resource "genesyscloud_architect_datatable_row" "away" {
  datatable_id = var.datatable_id
  key_value    = "Away"
  properties_json = jsonencode({
    "GenesysCloudPresenceId" = "5e5c5c66-ea97-4e7f-ac41-6424784829f2"
  })
}

// Be Right Back
resource "genesyscloud_architect_datatable_row" "be_right_back" {
  datatable_id = var.datatable_id
  key_value    = "BeRightBack"
  properties_json = jsonencode({
    "GenesysCloudPresenceId" = "5e5c5c66-ea97-4e7f-ac41-6424784829f2"
  })
}

// Busy
resource "genesyscloud_architect_datatable_row" "busy" {
  datatable_id = var.datatable_id
  key_value    = "Busy"
  properties_json = jsonencode({
    "GenesysCloudPresenceId" = "31fe3bac-dea6-44b7-bed7-47f91660a1a0"
  })
}

// Do Not Disturb
resource "genesyscloud_architect_datatable_row" "do_not_disturb" {
  datatable_id = var.datatable_id
  key_value    = "DoNotDisturb"
  properties_json = jsonencode({
    "GenesysCloudPresenceId" = "31fe3bac-dea6-44b7-bed7-47f91660a1a0"
  })
}

// Focusing
resource "genesyscloud_architect_datatable_row" "focusing" {
  datatable_id = var.datatable_id
  key_value    = "Focusing"
  properties_json = jsonencode({
    "GenesysCloudPresenceId" = "31fe3bac-dea6-44b7-bed7-47f91660a1a0"
  })
}

// In A Call
resource "genesyscloud_architect_datatable_row" "in_a_call" {
  datatable_id = var.datatable_id
  key_value    = "InACall"
  properties_json = jsonencode({
    "GenesysCloudPresenceId" = "31fe3bac-dea6-44b7-bed7-47f91660a1a0"
  })
}

// In A Meeting
resource "genesyscloud_architect_datatable_row" "in_a_meeting" {
  datatable_id = var.datatable_id
  key_value    = "InAMeeting"
  properties_json = jsonencode({
    "GenesysCloudPresenceId" = "31fe3bac-dea6-44b7-bed7-47f91660a1a0"
  })
}

// Offline
resource "genesyscloud_architect_datatable_row" "offline" {
  datatable_id = var.datatable_id
  key_value    = "Offline"
  properties_json = jsonencode({
    "GenesysCloudPresenceId" = "ccf3c10a-aa2c-4845-8e8d-f59fa48c58e5"
  })
}

// OffWork
resource "genesyscloud_architect_datatable_row" "offwork" {
  datatable_id = var.datatable_id
  key_value    = "OffWork"
  properties_json = jsonencode({
    "GenesysCloudPresenceId" = "ccf3c10a-aa2c-4845-8e8d-f59fa48c58e5"
  })
}

// Presenting
resource "genesyscloud_architect_datatable_row" "presenting" {
  datatable_id = var.datatable_id
  key_value    = "Presenting"
  properties_json = jsonencode({
    "GenesysCloudPresenceId" = "31fe3bac-dea6-44b7-bed7-47f91660a1a0"
  })
}