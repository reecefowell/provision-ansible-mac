Usage:
------

```
./bootstrap.sh
```

What it does:
-------------

- Installs Git.
- Adds OS X packages via Homebrew.
- Adds OS X apps via Homebrew Cask.
- Configures apps via Apples Defaults command.
- Configures OS X via Apples Defaults command (including Preferences panes).
- Adds Oh-my-Zsh for ZShell.
- Adds forked and customized Agnoster theme for Oh-my-Zsh.
- Adds and sets up Git, including global .gitignore and global .gitconfig etc.
- Fetches SSH keys from remote LAN NAS server and configures SSH.
- Installs Java via Brew.

Inspired by:
------------

https://gist.github.com/saetia/1623487
http://il.luminat.us/blog/2014/04/19/how-i-fully-automated-os-x-with-ansible/
https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.osx
https://github.com/diimdeep/dotfiles/tree/master/osx/configure/el_capitan
https://github.com/rodionovd/dotfiles/blob/master/osx.sh
https://github.com/caskroom/homebrew-cask/blob/master/USAGE.md

TODO:
-----

- configure postgres
