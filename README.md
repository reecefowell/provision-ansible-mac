Usage:

```
./bootstrap.sh
```

Inspired by:

http://il.luminat.us/blog/2014/04/19/how-i-fully-automated-os-x-with-ansible/
https://gist.github.com/saetia/1623487
https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/.osx
https://github.com/diimdeep/dotfiles/tree/master/osx/configure/el_capitan
https://github.com/rodionovd/dotfiles/blob/master/osx.sh

TODO:

- fix some homebrew cask links so that binary is linked from /Applications
- figure out how to automate terminal.app's preferences so that "source ~/.zshrc" is run on new terminal
- still having issues with fonts for oh-my-zshell themes
- initialize ssh-agent et al
- setup git global defaults (i.e file new lines, global author name, github rate limit etc)
- add bower
- add node.js
- add gulpjs
- add java/jvm etc
