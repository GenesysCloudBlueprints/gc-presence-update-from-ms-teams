// Create a Data Action integration
module "data_action" {
  source                          = "git::https://github.com/GenesysCloudDevOps/public-api-data-actions-integration-module?ref=main"
  integration_name                = "Update Genesys Cloud User Presence Action"
  integration_creds_client_id     = var.client_id
  integration_creds_client_secret = var.client_secret
}

// Create a GC User Presence Update Data Action
module "gc_user_presence_update" {
  source             = "./modules/actions/gc-user-presence-update"
  action_name        = "GC User Presence Update"
  action_category    = "${module.data_action.integration_name}"
  integration_id     = "${module.data_action.integration_id}"
}

// Create a Get Genesys Cloud User Presence Data Action
module "get_genesys_cloud_user_presence" {
  source             = "./modules/actions/get-genesys-cloud-user-presence"
  action_name        = "Get Genesys Cloud User Presence"
  action_category    = "${module.data_action.integration_name}"
  integration_id     = "${module.data_action.integration_id}"
}

// Create a Data Table
module "data_table" {
  source             = "./modules/datatable"
}

// Create a Data Table Row
module "data_table_row" {
  source       = "./modules/datatable-row"
  datatable_id = module.data_table.datatable_id
  depends_on = [ module.data_table ]
}

// Configures the architect workflow
module "archy_flow" {
  source                = "./modules/flow"
  data_action_category  = module.data_action.integration_name
  data_action_name_1    = module.gc_user_presence_update.action_name
  data_action_name_2    = module.get_genesys_cloud_user_presence.action_name
  data_table_name       = module.data_table.datatable_name
}

// Create a Trigger
module "trigger" {
  source       = "./modules/trigger"
  workflow_id  = module.archy_flow.flow_id
  depends_on = [ module.archy_flow ]
}
