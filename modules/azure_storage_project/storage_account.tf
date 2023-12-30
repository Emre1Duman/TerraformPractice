module "storage_account" {
    source                      = "./azure_storage_project"
    storage_account_name        = "emredumanstorage1"
    resource_group_name         = "resourcegroupmodule"
    location                    = "UK South"
    account_tier                = "Standard"
    account_replication_type    = "LRS"
}

output "storage_account_id2" {
  value = module.storage_account.storage_account_id
}