#!/bin/bash

function _setup_vm_fixes() {
  _display_message "VM FIXES"

  echo "Copying ${VM_FIXES_DIR} to ~"

  cp -r "${VM_FIXES_DIR}/*" ~

  echo "Complete"

  echo "Adding vmware module fixes"

  sudo sed -i -e '/MODULES=/ s/=.*/=(vsock vmw_vsock_vmci_transport vmw_balloon vmw_vmci vmwgfx)/' /etc/mkinitcpio.conf
  sudo mkinitcpio -P

  echo "Complete"

  echo "Adding shared folder entry"

  mkdir -p ~/VBoxShare
  echo ".host:/VirtualBoxShare ${HOME}/VBoxShare fuse.vmhgfs-fuse nofail,allow_other 0 0" | sudo tee -a /etc/fstab

  echo "Complete"

  echo "Turning on vmware services"

  sudo systemctl enable vmtoolsd.service
  sudo systemctl enable vmware-vmblock-fuse.service

  echo "Complete"
}
