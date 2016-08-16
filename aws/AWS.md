#AWS Commands

AMI uses Yum as the package manager. Apt-get is not available but could be installed but not recommended.  EC2 also doesn't let you upgrade the PHP version easily.  Hard to remove the old version.

```yum install <package 1> <package 2>...``` - install multiple packages

```yum list installed``` - show installed packages

```yum remove <package>``` - remove specific package

```yum search <term>``` - search packages


###External Clients

```sudo chmod -R 775 /var/www/html``` - This allows FileZilla or any other program logged in as ec2-user the ability to change files and folders in the html folder only. 


---

##Examples

```yum remove php*``` - Removes all PHP matching packages
