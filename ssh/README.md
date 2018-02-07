# SSH

## Setting up
- Place this config file inside your ~/.ssh/ folder.
- Make sure you have a private key such as id_rsa
- Make sure you execute cat id_rsa.pub >> authorized_keys in each server

Host: The alias you want
HostName: The IP 
Port: Usually 22 or 222
User: Your username
IdentityFile: Your private key which can be placed at ~/.ssh/id_rsa
LocalForward: Enables forwarding which is helpfull to open python notebooks remotely
ProxyCommand: Allows for connecting directly to nodes through blushark

