# 自分のBrewfile

# a precondition

* install xcode from AppStore. And Command line tools.
* <code>ssh-kegen -t rsa</code> and add setting to Deploy key

# bootstrap

* Brewfile install

~~~ bash
% git clone https://github.com/umiyosh/Brewfile.git
% cd Brewfile
% ./bin/brewSetup.sh
~~~

* set up Dropbox
# dotfiles

* [umiyosh/dotfiles](https://github.com/umiyosh/dotfiles)

* plist restore

TODO: misc.sh化

~~~ bash
% ln -s %HOME/dotfiles/.mackup.cfg $HOME/Dropbox/Mackup/.mackup.cfg
% mackup restore
~~~

# karabiner

TODO: misc.sh化

~~~
% git clone https://github.com/umiyosh/KeyRemap4MacBook-private-xml.git $HOME/Library/Application\ Support/KeyRemap4MacBook
~~~

# misc

TODO: misc.sh化

~~~ bash
% ./bin/misc.sh
% ./bin/pySetup.sh
% ./bin/goSetup.sh
% brew install rcmdnk/file/brew-file
% brew file set_repo
% ./bin/nodeSetup.sh
% ./bin/plSetup.sh
% ./bin/rbSetup.sh
~~~

