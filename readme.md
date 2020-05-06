# dotfiles notes

Dev days on Windows while one miss Terminal very much.

Last Modified: 星期五 04-17 18:02:36 2020

## Tree command in git-bash

1. Download and extract the tree.exe ([tree-1.5.2.2-bin.zip](http://downloads.sourceforge.net/gnuwin32/tree-1.5.2.2-bin.zip))

2. Copy the tree.exe to 'path-to-your/Git/usr/bin' e.g., I install the Git
   program to D:/Git, so I copy the tree.exe to D:/Git/usr/bin.

3. reopen your git-bash. tree command now should work well. If not, have a look
   at [this answer in StackExchange](https://superuser.com/questions/531592/how-do-i-add-the-tree-command-to-git-bash-on-windows)

## Term in vim

I like this feature, it's not Tmux in Terminal, but still a great improvement,
when to compare with multiple git-bash opened to do the work.

1. make sure your vim has "+terminal" feature, check with :ver in vim, if not,
   consider install a newer version of vim, such as vim82.

2. ":vert ter bash" to embed a bash shell in vertical split buff, I choose
   setting the keymap as: "nnoremap \<space\>b :vert ter bash" to trigger it

3. "nnoremap \<Esc\> \<C-w\>N" to back to normal mode in a vim-term

4. "\<C-w\>\<C-c\>" to kill the vim-term job. If not, the terminal still run
   the job in backend, and when you want to quit the vim, it ask you to deal
   with it.

5. Learn more with :h ter

## Python3 support in [Vim8](https://github.com/vim/vim-win32-installer/releases) on Win10

1. In vim normal mode, :py3 print("Hi") prints 'Hi', you'll be fine. If not,
   vim will complain something like 'cannot load python3x.dll'. There we go.

2. Edit your vimrc file, add this line:
    ```bash
    set pythonthreedll=python3x.dll
    ```
Note that the python3x.dll should be the same version python you had installed
in your system. You can check with:
    ```bash
    $ python -V  # your python version

    $ which python # where your python.exe located
    ```

3. If step2 not working, try add one more line to vimrc:
    ```bash
    set pythonthreedll=python3x.dll
    set pythonthreehome='the/path/to/python3x.exe'
    ```

4. Note that the gvim-64bit must be paired with python3x-64bit; 32bit likewise

## Curl:(6) Could not resolve host: raw.githubusercontent.com Problem
A: It's mainly because of the wrong IP of raw.githubusercontent.com.

Solution:

1. Go to [ipaddress.com](https://www.ipaddress.com/)

2. Loopup the ip of "raw.githubusercontent.com", my searching resault is
   "199.232.26.133"

3. Edit/modify your machine's hosts file. This file resides in
   C:windows/system32/drivers/etc/ for windows or /etc for linux.

4. Append "199.232.68.133 raw.githubusercontent.com" to the hosts file.

5. It should work now. If not, keep searching.
