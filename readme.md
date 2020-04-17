# dotfiles notes

Dev days on Windows while one miss Terminal very much.

Last Modified: 星期五 04-17 15:00:29 2020

## Tree command in git-bash

1. Download and extract the tree.exe ([tree-1.5.2.2-bin.zip](http://downloads.sourceforge.net/gnuwin32/tree-1.5.2.2-bin.zip))

2. Copy the tree.exe to 'path-to-your/Git/usr/bin' e.g., I install the Git
   program to D:/Git, so I copy the tree.exe to D:/Git/usr/bin.

3. reopen your git-bash. tree command now should work well. If not, have a look
   at [this answer in StackExchange](https://superuser.com/questions/531592/how-do-i-add-the-tree-command-to-git-bash-on-windows)

## Term in vim

I like this feature, it's not Tmux in Terminal, but still a great improvement,
when to compare with multiple git-bash opened to do the work.

1. make sure your vim has +terminal feature, check with :ver in vim, if not,
   consider install a newer version of vim, such as vim82.

2. ":vert ter bash" to embed a bash shell in vertical split buff, I choose
   setting the keymap as: "nnoremap \<space\>b :vert ter bash" to trigger it

3. "nnoremap \<Esc\> \<C-w\>N" to back to normal mode in a vim-trem

4. "\<C-w\>\<C-c\>" to kill the vim-term job. If not, the terminal still run
   the job in backend, and when you want to quit the vim, it ask you to deal
   with it.

5. Learn more with :h ter
