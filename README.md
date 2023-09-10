# twb_pi_builder

## Instructions

1. Write the base Rasbian 32bit Desktop image to an SD card. The default user is `pi` and the password should be supplied.
1. Enable SSH server `sudo raspi-config -> Interface Options -> SSH -> Yes` if not already.
1. Grab the IP address for the pi.
1. Run `step1.yml` with the below command. When prompted enter password. Press `ENTER` to accept the default become password
     ```bash
     ansible-playbook --inventory [pi ip address], --user pi --ask-pass --ask-become-pass step1.yml
     ```
1. Check the IP address of the pi. Run `step2.yml` with the below command using the current IP.
     ```bash
     ansible-playbook --inventory [pi ip address], --user pi --ask-pass --ask-become-pass step2.yml
     ```
1. Copy the ssh public key to the bridgevm. SSH to pi and run the below command. The password for the bridgevm should be supplied.
     ```bash
     ssh-copy-id cmesworldpi@40.71.203.3
      ```
1. Copy the ssh public key to the bridgevm. SSH to pi and run the below command. The password for the bridgevm should be supplied.
     ```bash
     ssh-copy-id cmesworldpi@40.71.203.3
      ```
1. Run the following scripts to pull down the site.
    - Version.sh
    - GetLogs.sh
    - UpdateVersion.sh
1. Test the site using the app or by connecting to the Pi's IP address over http.

## Troubleshooting

If you have already connected to a pi with the same IP you may get an error when attempting to connect. You will need to run the below to remove the IP from your `known_hosts` file.

```bash
ssh-keygen -f ~/.ssh/known_hosts -R [pi ip address]
```

You may also have to connect once prior to running Ansible to add or replace the ip in your `known_hosts` file

```bash
ssh pi@[pi ip address]
```

## Manual Instruction

Manual instructions with comments can be found [here](https://www.dropbox.com/home/CMES-PI%20(Group)/Documentation?preview=Pi4OnTheFly-Documentation.docx)

## Notes
- If startup hangs on starting wlan when running Molecule try removing and reattaching the Wi-Fi card passthrough
- If using non-desktop figure out packages needed
  - wpasupplicant
  - rfkill
