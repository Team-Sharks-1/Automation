# infra/outputs.tf
output "public_ip" {
  description = "The public IP address of the VM"
  value       = azurerm_public_ip.public_ip.ip_address
  depends_on  = [azurerm_linux_virtual_machine.vm]  # Add this to ensure VM is fully created
}
