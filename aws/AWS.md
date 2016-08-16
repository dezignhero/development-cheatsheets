#AWS Commands

AMI uses Yum as the package manager. Apt-get is not available but could be installed but not recommended.  EC2 also doesn't let you upgrade the PHP version easily.  Hard to remove the old version.

```yum install <package 1> <package 2>...``` - install multiple packages
```yum list installed``` - show installed packages
```yum remove <package>``` - remove specific package
```yum search <term>``` - search packages

##Examples

```yum remove php*``` - Removes all PHP matching pacakges