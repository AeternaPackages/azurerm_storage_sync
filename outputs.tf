# --- azurerm_storage_sync ---
output "storage_syncs" {
  description = "All storage_sync resources"
  value       = module.storage_syncs.storage_syncs
}
output "storage_syncs_incoming_traffic_policy" {
  description = "List of incoming_traffic_policy values across all storage_syncs"
  value       = [for k, v in module.storage_syncs.storage_syncs : v.incoming_traffic_policy]
}
output "storage_syncs_location" {
  description = "List of location values across all storage_syncs"
  value       = [for k, v in module.storage_syncs.storage_syncs : v.location]
}
output "storage_syncs_name" {
  description = "List of name values across all storage_syncs"
  value       = [for k, v in module.storage_syncs.storage_syncs : v.name]
}
output "storage_syncs_registered_servers" {
  description = "List of registered_servers values across all storage_syncs"
  value       = [for k, v in module.storage_syncs.storage_syncs : v.registered_servers]
}
output "storage_syncs_resource_group_name" {
  description = "List of resource_group_name values across all storage_syncs"
  value       = [for k, v in module.storage_syncs.storage_syncs : v.resource_group_name]
}
output "storage_syncs_tags" {
  description = "List of tags values across all storage_syncs"
  value       = [for k, v in module.storage_syncs.storage_syncs : v.tags]
}


# --- azurerm_storage_sync_group ---
output "storage_sync_groups" {
  description = "All storage_sync_group resources"
  value       = module.storage_sync_groups.storage_sync_groups
}
output "storage_sync_groups_name" {
  description = "List of name values across all storage_sync_groups"
  value       = [for k, v in module.storage_sync_groups.storage_sync_groups : v.name]
}
output "storage_sync_groups_storage_sync_id" {
  description = "List of storage_sync_id values across all storage_sync_groups"
  value       = [for k, v in module.storage_sync_groups.storage_sync_groups : v.storage_sync_id]
}


# --- azurerm_storage_sync_cloud_endpoint ---
output "storage_sync_cloud_endpoints" {
  description = "All storage_sync_cloud_endpoint resources"
  value       = module.storage_sync_cloud_endpoints.storage_sync_cloud_endpoints
}
output "storage_sync_cloud_endpoints_file_share_name" {
  description = "List of file_share_name values across all storage_sync_cloud_endpoints"
  value       = [for k, v in module.storage_sync_cloud_endpoints.storage_sync_cloud_endpoints : v.file_share_name]
}
output "storage_sync_cloud_endpoints_name" {
  description = "List of name values across all storage_sync_cloud_endpoints"
  value       = [for k, v in module.storage_sync_cloud_endpoints.storage_sync_cloud_endpoints : v.name]
}
output "storage_sync_cloud_endpoints_storage_account_id" {
  description = "List of storage_account_id values across all storage_sync_cloud_endpoints"
  value       = [for k, v in module.storage_sync_cloud_endpoints.storage_sync_cloud_endpoints : v.storage_account_id]
}
output "storage_sync_cloud_endpoints_storage_account_tenant_id" {
  description = "List of storage_account_tenant_id values across all storage_sync_cloud_endpoints"
  value       = [for k, v in module.storage_sync_cloud_endpoints.storage_sync_cloud_endpoints : v.storage_account_tenant_id]
}
output "storage_sync_cloud_endpoints_storage_sync_group_id" {
  description = "List of storage_sync_group_id values across all storage_sync_cloud_endpoints"
  value       = [for k, v in module.storage_sync_cloud_endpoints.storage_sync_cloud_endpoints : v.storage_sync_group_id]
}


# --- azurerm_storage_sync_server_endpoint ---
output "storage_sync_server_endpoints" {
  description = "All storage_sync_server_endpoint resources"
  value       = module.storage_sync_server_endpoints.storage_sync_server_endpoints
}
output "storage_sync_server_endpoints_cloud_tiering_enabled" {
  description = "List of cloud_tiering_enabled values across all storage_sync_server_endpoints"
  value       = [for k, v in module.storage_sync_server_endpoints.storage_sync_server_endpoints : v.cloud_tiering_enabled]
}
output "storage_sync_server_endpoints_initial_download_policy" {
  description = "List of initial_download_policy values across all storage_sync_server_endpoints"
  value       = [for k, v in module.storage_sync_server_endpoints.storage_sync_server_endpoints : v.initial_download_policy]
}
output "storage_sync_server_endpoints_local_cache_mode" {
  description = "List of local_cache_mode values across all storage_sync_server_endpoints"
  value       = [for k, v in module.storage_sync_server_endpoints.storage_sync_server_endpoints : v.local_cache_mode]
}
output "storage_sync_server_endpoints_name" {
  description = "List of name values across all storage_sync_server_endpoints"
  value       = [for k, v in module.storage_sync_server_endpoints.storage_sync_server_endpoints : v.name]
}
output "storage_sync_server_endpoints_registered_server_id" {
  description = "List of registered_server_id values across all storage_sync_server_endpoints"
  value       = [for k, v in module.storage_sync_server_endpoints.storage_sync_server_endpoints : v.registered_server_id]
}
output "storage_sync_server_endpoints_server_local_path" {
  description = "List of server_local_path values across all storage_sync_server_endpoints"
  value       = [for k, v in module.storage_sync_server_endpoints.storage_sync_server_endpoints : v.server_local_path]
}
output "storage_sync_server_endpoints_storage_sync_group_id" {
  description = "List of storage_sync_group_id values across all storage_sync_server_endpoints"
  value       = [for k, v in module.storage_sync_server_endpoints.storage_sync_server_endpoints : v.storage_sync_group_id]
}
output "storage_sync_server_endpoints_tier_files_older_than_days" {
  description = "List of tier_files_older_than_days values across all storage_sync_server_endpoints"
  value       = [for k, v in module.storage_sync_server_endpoints.storage_sync_server_endpoints : v.tier_files_older_than_days]
}
output "storage_sync_server_endpoints_volume_free_space_percent" {
  description = "List of volume_free_space_percent values across all storage_sync_server_endpoints"
  value       = [for k, v in module.storage_sync_server_endpoints.storage_sync_server_endpoints : v.volume_free_space_percent]
}



