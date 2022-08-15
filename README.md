# dotfiles
Linux config files
## zsh
- ~/.zshrc -> zsh 配置文件. 只改变了theme选项, 增加 zsh-autosuggestion 和 zsh-highlighting;
## vim
- ~/.(g)vimrc -> (g)vim config file on Linux;(I changed my os to Archlinux, with vim 8.2, so I use coc.vim and vim-airline instead of neocomplete and vim-powerline);
- init.vim -> neovim 配置文件(vim目前支持LSP，我使用vim8.2了).
- _(g)vimrc -> Windows上(g)vim配置文件.
- ~/.vimrc.bundles -> 类Unix系统上的(g)vim插件配置文件.
## i3wm
- config -> i3wm 配置文件，使用 font awesome icon-font; 需要特别主义自启动程序相关配置;(我的配置放在 ~/.config/i3/config)
- blurlock -> i3lock shell to exec when press Mod+l(我弃用了这个功能，快捷键功能被i3wm窗口移动所占用);(in /usr/local/bin/) I use ``dm-tool lock`` to lock screen instead.
- .i3status.conf/.i3block.conf -> i3status/i3blocks config file.(Mine is in ~/.config/i3/)   Now I use py3status instead.
- py3status.conf -> py3status 配置文件，用于屏幕下方或者上方的status_bar配置，展示系统相关信息，及窗口序号；
## emacs
- emacs -> 包含所有emacs配置，我使用了现有配置[Spacemacs](https://www.spacemacs.org)，keyfreq是自定义的一个layer，放在 ``~/.emacs.d/layers/+tools/``目录下；

![](https://raw.githubusercontent.com/jadegong/dotfiles/master/2020-12-18-095830_1920x1200_scrot.png)
![](https://raw.githubusercontent.com/jadegong/dotfiles/master/emacs_Screenshot_2022-08-13_17-22-33.png)
