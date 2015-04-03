# docker-aliases
Run commands inside docker containers to keep your OS untouched using bash alias. The aliases are saved into the file called "aliases.sh", and it will use, mount files and open ports in a container instead of using the one in the host/main operative system.

The main concept is to run a comand using its docker container/image like that:

    docker run -it --rm -v $(pwd):/directory -w /directory node node

But this repository contains some aliases to "replace" the main command:

    alias node="docker run -it --rm -v $(pwd):/directory -w /directory node node"
    alias npm="docker run -it --rm -v $(pwd):/directory -w /directory node npm"
    # then run
    node --version
    npm --version

You can use these commands:

 * ruby
 * rails
 * php
 * node
 * npm
 * coffee ( coffeescript )
 * python ( python 3.4 )
 * python2.7
 * django-admin.py
 * nginx
 * redis-cli
 * redis-server
 * postgres
 * psql
 * ... more! See [aliases.sh](aliases.sh) file!

## How to use
Add, in your ~/.bash_profile file this line, replacing ~/PATH_OF_REPOSITORY with the PATH/directory of this repository.

    source ~/PATH_OF_REPOSITORY/aliases.sh

And then it will start using these commands, inside a docker container each time you run any of them.

**Note**: Some commands may require some more configuration in order to work properly. Feel free to create a pull request or open an issue in case you find a solution!
