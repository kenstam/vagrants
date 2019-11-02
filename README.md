# Ruby with Vagrant
## Requirements

* Install VirtualBox [https://www.virtualbox.org](https://www.virtualbox.org) or

```
brew cask install virtualbox
```

* Install Vagrant [https://www.vagrantup.com/](https://www.vagrantup.com/) or

```
$ brew cask install vagrant
```

**Download and install Vagrant-vbguest for easier guest-additions management**

```
$ vagrant plugin install vagrant-vbguest
$ vagrant plugin install vagrant-timezone
$ vagrant plugin install vagrant-hostmanager
```

## Usage

Go to one of the sudirectories of the vagrant environment you want to create and:

```
$ vagrant up
```

ssh in and start your development:

```
vagrant ssh
```

```
$ git clone https://github.com/...
```
