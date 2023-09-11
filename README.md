# cmes_pi_builder

## Instructions

1. Write the base Rasbian 32bit Desktop image to an SD card. The default user is `pi` and the password should be supplied.
2. Enable SSH server `sudo raspi-config -> Interface Options -> SSH -> Yes` if not already.
3. Grab the IP address for the pi.
4. If you haven't installed Ansible already, please follow the instructions below. Make sure to install the collections needed for this playbook.
5. Run `step1.yml` with the below command. When prompted enter password. Press `ENTER` to accept the default become password
     ```bash
     ansible-playbook --inventory [pi ip address], --user pi --ask-pass --ask-become-pass step1.yml
     ```
6. Check the IP address of the pi to ensure it hasn't changed. Run `step2.yml` with the below command using the current IP.

     For English:
     ```bash
     ansible-playbook --inventory [pi ip address], --user pi --ask-pass --ask-become-pass step2.yml
     ```
     For Spanish:
     ```bash
     ansible-playbook --extra-vars language=spanish --inventory [pi ip address], --user pi --ask-pass --ask-become-pass step2.yml
     ```
7. Copy the ssh public key to the bridgevm. SSH to pi and run the below command. The password for the bridgevm should be supplied.
     ```bash
     ssh-copy-id cmesworldpi@40.71.203.3
      ```
8. Copy the ssh public key to the bridgevm. SSH to pi and run the below command. The password for the bridgevm should be supplied.
     ```bash
     ssh-copy-id cmesworldpi@40.71.203.3
      ```
9.  Run the following scripts to pull down the site.
    - Version.sh
    - GetLogs.sh
    - UpdateVersion.sh
10. Test the site using the app or by connecting to the Pi's IP address over http.
11. If everything looks good. Shutdown the pi, remove the sd card and insert it your PC.
12. Write img file from sd card. You will need to find which device your sd card is labeled.
     ```bash
     sudo dd if=/dev/mmcblk0 of=./cmes_pi_base_uncompressed.img status=progress
     ```
13. Use [pishrink](https://github.com/Drewsif/PiShrink) to shrink the uncompressed image.
    ```bash
    pishrink.sh cmes_pi_base_uncompressed.img cmes_pi_base.img
    ```

## Troubleshooting

If you have already connected to a pi with the same IP you may get an error when attempting to connect. You will need to run the below to remove the IP from your `known_hosts` file.

```bash
ssh-keygen -f ~/.ssh/known_hosts -R [pi ip address]
```

You may also have to connect once prior to running Ansible to add or replace the ip in your `known_hosts` file

```bash
ssh pi@[pi ip address]
```
## Installing Ansible

### Linux

Ansible should be installed through PyPi using the `pip` command. If you already use Python for other projects, you may want to create a [virtual environment](https://docs.python.org/3/library/venv.html) for your ansible install. An introduction to installing Ansible can be found [here](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).

1. Install `python3` and `python3-pip` via apt or dnf.
2. Install the latest version of the ansible bundle with `pip3 install ansible`.

### MacOS

Ansible can be installed via homebrew. Instructions can be found [here](https://medium.com/javarevisited/how-to-install-ansible-on-mac-2baf00d42466).
Not tested as of 9/10/23

### Windows

Ansible can be installed on a Windows through [WSL](https://learn.microsoft.com/en-us/windows/wsl/about). Instructions can be found [here](https://www.youtube.com/watch?v=4w6eVmYY-Oc).
Not tested as of 9/10/23

### Installing Collections

Install the collections needed for this playbook with `ansible-galaxy collection install -r ./collections/requirements.yml --force`


## Manual Instructions

Manual instructions for building a CMES pi can be found [here](https://www.dropbox.com/home/CMES-PI%20(Group)/Documentation?preview=Pi4OnTheFly-Documentation.docx)

## Notes
- If startup hangs on starting wlan when running Molecule try removing and reattaching the Wi-Fi card passthrough
- If using non-desktop figure out packages needed
  - wpasupplicant
  - rfkill

## Questions
- Testing protocol
  - Azure arm VM? Need to figure out how to emulate wlan0
  - How can we test the pi changing networks?
  - Are there any edge cases we should test for?
  - What issues in the field can try to replicate during testing?
