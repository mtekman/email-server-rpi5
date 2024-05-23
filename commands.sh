# Run the whole thing
ansible-playbook -i inventory.yaml main.yaml --ask-become-pass --extra-vars="install_target=/dev/sdd"

# Build the DietPi image
##ansible-playbook -i inventory.yaml generate-img.yaml
##--extra-vars="install_target=/dev/sdd" --ask-become-pass #
##--start-at-task="Set the SSH config"

