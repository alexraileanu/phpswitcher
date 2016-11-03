# phpswitcher

Small utility to seamlessly switch between php versions.

## Installation and usage

### Installation

`$ wget https://github.com/alexraileanu/phpswitcher/blob/master/install.sh | sudo sh`

This installs phpswitcher globally in /usr/local/bin. If you prefer installing it locally for each user follow these steps:

`$ git clone git@github.com:alexraileanu/phpswitcher.git ~/.phpswitcher`

### Usage

If you've installed phpswitcher globally and assuming you want to migrate from other version to 7.0 you run the following: `$ sudo phpswitcher 7.0` (this runs with sudo because it needs to update some alternatives and disable/enable some apache modules).

If you've installed phpswitcher locally for a user you can run the following command to switch to php 7.0 from, for example, 5.6 `$ sudo ~/.phpswitcher/phpswitcher.sh 7.0`

## Assumptions

- You have several php versions installed (this utility does not install and/or compile any php versions yet)
- (for now) You use an ubuntu flavor distro
