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
* plist restore

~~~ bash
% mackup restore
~~~

# dotfiles

* [umiyosh/dotfiles](https://github.com/umiyosh/dotfiles)

# misc

~~~ bash
% ./bin/misc.sh
% ./bin/pySetup.sh
% ./bin/goSetup.sh
% brew install python
% brew install rcmdnk/file/brew-file
% brew file set_repo
% ./bin/nodeSetup.sh
% ./bin/plSetup.sh
% ./bin/rbSetup.sh
~~~

