# Docker stuff
This is the documentation of my [docker](https://docs.docker.com/) learning. This whole setup was in CLI and the system was a Linux based system (Fedora). Installation link is [here](https://developer.fedoraproject.org/tools/docker/docker-installation.html)

Another thing which I did was to make an alias of docker in my system so I don't have to write sudo everytime I had to use docker in CLI.

#### To do the same follow these steps:
1. Open terminal
2. `nvim .bashrc` (I used nvim. vim or nano can be used as well or just vscode also no issues here.)
3. paste this line in the .bashrc file `alias docker="sudo docker"` and save it. (First press `i` to get into the edit mode if using nvim or vim)
4. To exit nvim or vim and save the file: press `esc` first then `:wq`. The file will be saved and you're out of nvim/vim.
5. Restart the terminal or run this cmd; `source ~/.bashrc`.