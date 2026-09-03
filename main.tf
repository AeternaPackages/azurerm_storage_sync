locals {
  storage_syncs = { for k1, v1 in var.storage_syncs : k1 => { incoming_traffic_policy = v1.incoming_traffic_policy, location = v1.location, name = v1.name, resource_group_name = v1.resource_group_name, tags = v1.tags } }

  storage_sync_groups = merge([
    for k1, v1 in var.storage_syncs : {
      for k2, v2 in coalesce(v1.storage_sync_groups, {}) :
      "${k1}/${k2}" => merge(v2, {
        storage_sync_id = module.storage_syncs.storage_syncs_id["${k1}"]
      })
    }
  ]...)

  storage_sync_cloud_endpoints = merge([
    for k1, v1 in var.storage_syncs : merge([
      for k2, v2 in coalesce(v1.storage_sync_groups, {}) : {
        for k3, v3 in coalesce(v2.storage_sync_cloud_endpoints, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          storage_sync_group_id = module.storage_sync_groups.storage_sync_groups_id["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)

  storage_sync_server_endpoints = merge([
    for k1, v1 in var.storage_syncs : merge([
      for k2, v2 in coalesce(v1.storage_sync_groups, {}) : {
        for k3, v3 in coalesce(v2.storage_sync_server_endpoints, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          storage_sync_group_id = module.storage_sync_groups.storage_sync_groups_id["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)
}

module "storage_syncs" {
  source        = "git::https://github.com/AeternaModules/azurerm_storage_sync.git?ref=v5.0.1"
  storage_syncs = local.storage_syncs
}

module "storage_sync_groups" {
  source              = "git::https://github.com/AeternaModules/azurerm_storage_sync_group.git?ref=v5.0.1"
  storage_sync_groups = local.storage_sync_groups
  depends_on          = [module.storage_syncs]
}

module "storage_sync_cloud_endpoints" {
  source                       = "git::https://github.com/AeternaModules/azurerm_storage_sync_cloud_endpoint.git?ref=v5.0.1"
  storage_sync_cloud_endpoints = local.storage_sync_cloud_endpoints
  depends_on                   = [module.storage_sync_groups]
}

module "storage_sync_server_endpoints" {
  source                        = "git::https://github.com/AeternaModules/azurerm_storage_sync_server_endpoint.git?ref=v5.0.1"
  storage_sync_server_endpoints = local.storage_sync_server_endpoints
  depends_on                    = [module.storage_sync_groups]
}

