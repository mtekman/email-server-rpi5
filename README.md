# Raspberry Pi5 Email Server

  ![device](https://gitlab.com/mtekman/email-server-rpi5/-/raw/main/img.jpeg)

This is a a raspberry pi5 device with a 10" screen, running a Phosh
desktop, and an email server to scrape emails from Novogene for new
samples and extract the passwords required to download, process, and
archive them.

The pipeline logs the downloaded data and stores the data safely over
a network mount. Dialogs and notifications are given to the user via
the desktop interface.

The whole ansible pipeline is composed as follows:

* Generates a RPi5 debian image and configures it, then burns it to an SD card
* Configures over the network the Firewall, Desktop and Touchpad
* Installs a custom battery kernel to appease the Phosh desktop
* Install the email server


All can be run with the single command:

    ansible-playbook -i inventory.yaml main.yaml \
      --ask-become-pass \
      --extra-vars="install_target=/dev/sdd"
      

