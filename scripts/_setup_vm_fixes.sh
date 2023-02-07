#!/bin/bash

function _setup_vm_fixes() {
  _display_message "VM FIXES"

  echo "Copying ${VM_FIXES_DIR} to ~ and /etc"

  cp -r "${VM_FIXES_DIR}/home/." ~/
  sudo cp -r "${VM_FIXES_DIR}/etc/." /etc/

  echo "Complete"

  echo "Adding vmware module fixes"

  sudo dracut-rebuild

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
