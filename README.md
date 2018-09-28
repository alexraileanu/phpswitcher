# phpswitcher

Small utility to seamlessly switch between php versions.

## Installation and usage

### Installation

`$ wget https://github.com/alexraileanu/phpswitcher/blob/master/install.sh | sudo sh`

This installs phpswitcher globally in your home directory under `.phpswitcher`.

To use it globally, you need to add the install location to your path variable. Add the following to your `.zshrc` or `.bashrc`:

`export PATH="$PATH:$HOME/.phpswitcher"`


### Usage

Assuming you want to migrate from other version to 7.0 you run the following: `$ sudo phpswitcher 7.0`. Sudo is needed because it needs to update some alternatives and disable/enable some apache modules.


## Assumptions

- You have several php versions installed (this utility does not install and/or compile any php versions yet)
- (for now) You use an ubuntu flavor distro
