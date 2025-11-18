output "resource_group"      { value = local.rg_name }
output "hub_vnet"            { value = module.hub.vnet_name }
output "firewall_ip"         { value = module.hub.firewall_private_ip }
output "spoke_dev_vnet"      { value = module.spoke_dev.vnet_name }
output "spoke_prod_vnet"     { value = module.spoke_prod.vnet_name }
