# twb_pi_builder

This is two different plays since network can change. This should be run as the pi user. SSH Server needs to be running. To complete the build run the below:

```bash
ansible-playbook --inventory [Pi ip address], --user pi --ask-pass --ask-become-pass step1.yml
ansible-playbook --inventory [Pi ip address], --user pi --ask-pass --ask-become-pass step2.yml
```

## Things to review
- Should we be using a more lightweight OS?
- Should SSH be enabled?
- Should the wifi password be encrypted in play?
- Why not 64bit?
- Should we change the pi password?

## Manual Instructions
Manual instructions with comments can be found [here](https://docs.google.com/document/d/15NDE8Vg27T2wyaHhkgvz0evFtDNcO-4E0P_ZHmdSFPY/edit)

## Notes
- If startup hangs on wlan remove and reattach Wi-Fi card passthrough
- You will have to manually copy over the ssh key to the server
- If using non-desktop figure out packages needed
  - wpasupplicant
  - rfkill
