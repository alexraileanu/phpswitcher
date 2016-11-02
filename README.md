# phpswitcher

Small utility to seamlessly switch between php versions.

## Installation and usage

### Installation

`$ git clone git@github.com:alexraileanu/phpswitcher.git`

`$ cd phpswitcher`

`$ cd /usr/local/bin`

`$ sudo ln -s /path/to/phpswitcher/phpswitcher.sh phpswitcher`


### Usage

Assuming you want to migrate from other version to 7.0 you run the following: `$ sudo phpswitcher 7.0` (this runs with sudo because it needs to update some alternatives and disable/enable some apache modules).

## Assumptions

- You have several php versions installed
- (for now) You use an ubuntu flavor distro
