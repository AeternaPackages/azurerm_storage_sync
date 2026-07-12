# --- azurerm_storage_sync ---
output "storage_syncs_incoming_traffic_policy" {
  description = "Map of incoming_traffic_policy values across all storage_syncs, keyed the same as var.storage_syncs"
  value       = module.storage_syncs.storage_syncs_incoming_traffic_policy
}

output "storage_syncs_location" {
  description = "Map of location values across all storage_syncs, keyed the same as var.storage_syncs"
  value       = module.storage_syncs.storage_syncs_location
}

output "storage_syncs_name" {
  description = "Map of name values across all storage_syncs, keyed the same as var.storage_syncs"
  value       = module.storage_syncs.storage_syncs_name
}

output "storage_syncs_registered_servers" {
  description = "Map of registered_servers values across all storage_syncs, keyed the same as var.storage_syncs"
  value       = module.storage_syncs.storage_syncs_registered_servers
}

output "storage_syncs_resource_group_name" {
  description = "Map of resource_group_name values across all storage_syncs, keyed the same as var.storage_syncs"
  value       = module.storage_syncs.storage_syncs_resource_group_name
}

output "storage_syncs_tags" {
  description = "Map of tags values across all storage_syncs, keyed the same as var.storage_syncs"
  value       = module.storage_syncs.storage_syncs_tags
}

# --- azurerm_storage_sync_group ---
output "storage_sync_groups_name" {
  description = "Map of name values across all storage_sync_groups, keyed the same as var.storage_sync_groups"
  value       = module.storage_sync_groups.storage_sync_groups_name
}

output "storage_sync_groups_storage_sync_id" {
  description = "Map of storage_sync_id values across all storage_sync_groups, keyed the same as var.storage_sync_groups"
  value       = module.storage_sync_groups.storage_sync_groups_storage_sync_id
}

# --- azurerm_storage_sync_cloud_endpoint ---
output "storage_sync_cloud_endpoints_file_share_name" {
  description = "Map of file_share_name values across all storage_sync_cloud_endpoints, keyed the same as var.storage_sync_cloud_endpoints"
  value       = module.storage_sync_cloud_endpoints.storage_sync_cloud_endpoints_file_share_name
}

output "storage_sync_cloud_endpoints_name" {
  description = "Map of name values across all storage_sync_cloud_endpoints, keyed the same as var.storage_sync_cloud_endpoints"
  value       = module.storage_sync_cloud_endpoints.storage_sync_cloud_endpoints_name
}

output "storage_sync_cloud_endpoints_storage_account_id" {
  description = "Map of storage_account_id values across all storage_sync_cloud_endpoints, keyed the same as var.storage_sync_cloud_endpoints"
  value       = module.storage_sync_cloud_endpoints.storage_sync_cloud_endpoints_storage_account_id
}

output "storage_sync_cloud_endpoints_storage_account_tenant_id" {
  description = "Map of storage_account_tenant_id values across all storage_sync_cloud_endpoints, keyed the same as var.storage_sync_cloud_endpoints"
  value       = module.storage_sync_cloud_endpoints.storage_sync_cloud_endpoints_storage_account_tenant_id
}

output "storage_sync_cloud_endpoints_storage_sync_group_id" {
  description = "Map of storage_sync_group_id values across all storage_sync_cloud_endpoints, keyed the same as var.storage_sync_cloud_endpoints"
  value       = module.storage_sync_cloud_endpoints.storage_sync_cloud_endpoints_storage_sync_group_id
}

# --- azurerm_storage_sync_server_endpoint ---
output "storage_sync_server_endpoints_cloud_tiering_enabled" {
  description = "Map of cloud_tiering_enabled values across all storage_sync_server_endpoints, keyed the same as var.storage_sync_server_endpoints"
  value       = module.storage_sync_server_endpoints.storage_sync_server_endpoints_cloud_tiering_enabled
}

output "storage_sync_server_endpoints_initial_download_policy" {
  description = "Map of initial_download_policy values across all storage_sync_server_endpoints, keyed the same as var.storage_sync_server_endpoints"
  value       = module.storage_sync_server_endpoints.storage_sync_server_endpoints_initial_download_policy
}

output "storage_sync_server_endpoints_local_cache_mode" {
  description = "Map of local_cache_mode values across all storage_sync_server_endpoints, keyed the same as var.storage_sync_server_endpoints"
  value       = module.storage_sync_server_endpoints.storage_sync_server_endpoints_local_cache_mode
}

output "storage_sync_server_endpoints_name" {
  description = "Map of name values across all storage_sync_server_endpoints, keyed the same as var.storage_sync_server_endpoints"
  value       = module.storage_sync_server_endpoints.storage_sync_server_endpoints_name
}

output "storage_sync_server_endpoints_registered_server_id" {
  description = "Map of registered_server_id values across all storage_sync_server_endpoints, keyed the same as var.storage_sync_server_endpoints"
  value       = module.storage_sync_server_endpoints.storage_sync_server_endpoints_registered_server_id
}

output "storage_sync_server_endpoints_server_local_path" {
  description = "Map of server_local_path values across all storage_sync_server_endpoints, keyed the same as var.storage_sync_server_endpoints"
  value       = module.storage_sync_server_endpoints.storage_sync_server_endpoints_server_local_path
}

output "storage_sync_server_endpoints_storage_sync_group_id" {
  description = "Map of storage_sync_group_id values across all storage_sync_server_endpoints, keyed the same as var.storage_sync_server_endpoints"
  value       = module.storage_sync_server_endpoints.storage_sync_server_endpoints_storage_sync_group_id
}

output "storage_sync_server_endpoints_tier_files_older_than_days" {
  description = "Map of tier_files_older_than_days values across all storage_sync_server_endpoints, keyed the same as var.storage_sync_server_endpoints"
  value       = module.storage_sync_server_endpoints.storage_sync_server_endpoints_tier_files_older_than_days
}

output "storage_sync_server_endpoints_volume_free_space_percent" {
  description = "Map of volume_free_space_percent values across all storage_sync_server_endpoints, keyed the same as var.storage_sync_server_endpoints"
  value       = module.storage_sync_server_endpoints.storage_sync_server_endpoints_volume_free_space_percent
}


