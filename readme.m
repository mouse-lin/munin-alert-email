### Send munin alert email
---

This script converts Munin alerts into email using ruby


### Munin.conf configuration

Put this script[mail] somewhere on your Munin master and make it executable. Then add it as a contact in your Munin configuration like so:


```
  contact.mail.command  | [script] [script]
  contact.mail.always_send warning critical
  
  # a simple host tree
  [localhost.localdomain]
      address 127.0.0.1
      use_node_name yes
      redis_memory_.memory.warning 800000 #redis memory example
      cpu.system.warning 80 # cpu system warning
      cpu.user.warning 50 # cpu user warning

```
Replace [script] with the full path to this mail script(yes, it supposed to be there twice).
Restart munin-node
    
    sudo service munin-node restart
