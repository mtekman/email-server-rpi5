# Build the DietPi image
ansible-playbook -i inventory.yaml generate-img.yaml --extra-vars="install_target=/dev/sdd" --ask-become-pass # --start-at-task="Set the SSH config"

