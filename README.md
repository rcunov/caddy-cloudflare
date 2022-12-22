# Current Docker stack notes

Heimdall &#10231; Proxmox API tutorial:
* Under Datacenter &#10142; Permissions &#10142; API Tokens, click 'Add', select your user and give the token a name under Token ID
* After clicking 'Add', note down the Token ID and Secret (The secret is only shown once after saving)
* Under Datacenter &#10142; Permissions, click 'Add &#10142; API Token Permission'
* Under Path, select '/nodes', select your API token, and assign the role 'PVEAuditor', then click 'Add'
* On your Heimdall instance, edit the Proxmox entry and input the Token ID and Secret (=Key) that you noted down earlier at the bottom of the settings page

Credit to heisenberglabs#3232 in the Linuxserver.io discord.
