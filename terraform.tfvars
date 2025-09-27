sub_id                          = "your-sub-id"
location                        = "Central India"
resource_group_name             = "mdp-dev"
vnet_name                       = "mdp-vnet"
vnet_address_space              = "10.11.0.0/16"
subnet_name                     = "mdp-dev-subnet"
subnet_prefix                   = "10.11.1.0/24"
nic_name                        = "mdp-nic"
nsg_name                        = "mdp-nsg"

vm_name                         = "dockerv2-test"
vm_size                         = "Standard_F16s_v2"
admin_username                  = "beroot"
admin_password                  = "Beroot@123"

image_publisher                 = "Canonical"
image_offer                     = "0001-com-ubuntu-server-jammy"
image_sku                       = "18.04-LTS"
image_version                   = "latest"
os_disk_type                    = "Premium_LRS"

disks_count                     = 2
disks_size                      = 256

peer_name_between_dev_vnet_to_jenkins_vnet = "dev_vnet_to_jenkins_vnet"
peer_name_between_dev_vnet_to_amdp_vnet    = "dev_vnet_to_amdp_vnet"
peer_name_between_jenkins_vnet_to_dev_vnet = "jenkins_vnet_to_dev_vnet"
peer_name_between_amdp_vnet_to_dev_vnet    = "amdp_vnet_to_dev_vnet"
