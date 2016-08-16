# Laravel Setup

Needs Homestead, Vagrant, Virtualbox, Composer

---

##Configuring Homestead.yaml

After editing ```~/.homestead/Homestead.yaml ```

*Folders* is a mapping of your documents directory.  *Sites* is a specific mapping of each project - must point to public folder of Laravel project.

Folders:
    - map: ~/documents/github
      to: /home/vagrant/github

Sites:
    - map: homestead.app
      to: /home/vagrant/github/<laravel project>/public

After updating, always type - ```vagrant provision``` to reload the config.

---

##Vagrant

```
vagrant up - starts the VM
vagrant reload - reloads the VM
vagrant ssh - ssh into the VM
vagrant halt - stops the VM
```
