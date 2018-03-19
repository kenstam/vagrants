# FTPServer with Vagrant
## Requirements

* Install VirtualBox [https://www.virtualbox.org](https://www.virtualbox.org) or

```
brew cask install virtualbox
```

* Install Vagrant

```
$ brew cask install vagrant
```

**Download and install Vagrant-vbguest for easier guest-additions management**

```
$ vagrant plugin install vagrant-vbguest
```

## Usage

```
$ vagrant up
```

Use and sFTP or FTP-S client to connect to above ip with:

```
ip: 192.168.33.33
port: 22 (sftp)
port: 990 (ftps)
user: user1
pass: user1
```

## Start/Stop ftp server

To stop:`vagrant halt`
To start: `vagrant up`
To destroy and start over: `vagrant destroy`

