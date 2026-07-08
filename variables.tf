variable "storage_syncs" {
  description = <<EOT
Map of storage_syncs, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - incoming_traffic_policy
    - tags
Nested storage_sync_groups (azurerm_storage_sync_group):
    Required:
        - name
    Nested storage_sync_cloud_endpoints (azurerm_storage_sync_cloud_endpoint):
        Required:
            - file_share_name
            - name
            - storage_account_id
        Optional:
            - storage_account_tenant_id
    Nested storage_sync_server_endpoints (azurerm_storage_sync_server_endpoint):
        Required:
            - name
            - registered_server_id
            - server_local_path
        Optional:
            - cloud_tiering_enabled
            - initial_download_policy
            - local_cache_mode
            - tier_files_older_than_days
            - volume_free_space_percent
EOT

  type = map(object({
    location                = string
    name                    = string
    resource_group_name     = string
    incoming_traffic_policy = optional(string) # Default: "AllowAllTraffic"
    tags                    = optional(map(string))
    storage_sync_groups = optional(map(object({
      name = string
      storage_sync_cloud_endpoints = optional(map(object({
        file_share_name           = string
        name                      = string
        storage_account_id        = string
        storage_account_tenant_id = optional(string)
      })))
      storage_sync_server_endpoints = optional(map(object({
        name                       = string
        registered_server_id       = string
        server_local_path          = string
        cloud_tiering_enabled      = optional(bool)   # Default: false
        initial_download_policy    = optional(string) # Default: "NamespaceThenModifiedFiles"
        local_cache_mode           = optional(string) # Default: "UpdateLocallyCachedFiles"
        tier_files_older_than_days = optional(number)
        volume_free_space_percent  = optional(number) # Default: 20
      })))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.storage_syncs) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.storage_syncs : [for kk in keys(coalesce(v0.storage_sync_groups, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.storage_syncs : [for k1, v1 in coalesce(v0.storage_sync_groups, {}) : [for kk in keys(coalesce(v1.storage_sync_cloud_endpoints, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.storage_syncs : [for k1, v1 in coalesce(v0.storage_sync_groups, {}) : [for kk in keys(coalesce(v1.storage_sync_server_endpoints, {})) : !strcontains(kk, "/")]]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
