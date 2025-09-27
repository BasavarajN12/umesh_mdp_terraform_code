sub_id                          = "your-sub-id"
location                        = "eastus"
resource_group_name             = "my-rg"
vnet_name                       = "my-vnet"
vnet_address_space              = "10.0.0.0/16"
subnet_name                     = "my-subnet"
subnet_prefix                   = "10.0.1.0/24"
nic_name                        = "my-nic"
nsg_name                        = "my-nsg"

vm_name                         = "my-vm"
vm_size                         = "Standard_B2s"
admin_username                  = "azureuser"
admin_password                  = "SuperSecret123!"

image_publisher                 = "Canonical"
image_offer                     = "UbuntuServer"
image_sku                       = "18.04-LTS"
image_version                   = "latest"
os_disk_type                    = "Standard_LRS"

disks_count                     = 2
disks_size                      = 128

peer_name_between_dev_vnet_to_jenkins_vnet = "dev-to-jenkins"
peer_name_between_dev_vnet_to_amdp_vnet    = "dev-to-dev2"
peer_name_between_jenkins_vnet_to_dev_vnet = "jenkins-to-dev"
peer_name_between_amdp_vnet_to_dev_vnet    = "dev2-to-dev"
