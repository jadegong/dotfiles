# dotfiles
Linux 开发环境配置文件
## zsh
- ~/.zshrc -> zsh 配置文件. 只改变了theme选项, 增加 zsh-autosuggestion zsh-highlighting 插件(需要git clone至 ~/.oh-my-zsh/plugins);增加fzf,yarn,nvm相关环境变量配置;
## vim
- ~/.(g)vimrc -> Linux (g)vim 配置文件;(使用vim8.2版本，新版本会出现兼容性问题，自定义按键启发源至 Spacemacs 按键配置,比如文件类以 <leader>f快捷键开头，搜索类以 <leader>s快捷键开头，根本不用花时间记忆，完全是按照单词首字母来设定);使用fzf插件进行文件搜索，在fzf插件中使用ripgrep(rg)进行文本搜索,响应速度极快；需要自行安装fzf和ripgrep工具或者ag搜索工具；
- init.vim -> neovim 配置文件(vim目前支持LSP，我使用vim8.2了).
- _(g)vimrc -> Windows上(g)vim配置文件(目前已弃用).
- ~/.vimrc.bundles -> 类Unix系统上的(g)vim插件配置文件.
## i3wm
- config -> i3wm 配置文件，使用 font awesome icon-font; 需要特别注意自启动程序相关配置;(我的配置放在 ~/.config/i3/config)
- blurlock -> i3lock 工具锁屏，按键 Mod+l(我弃用了这个功能，快捷键功能被i3wm光标向右窗口移动所占用); 使用命令 ``dm-tool lock`` 来锁屏.
- .i3status.conf/.i3block.conf -> i3status/i3blocks 配置文件.(放置在 ~/.config/i3/) 现在我用 py3status 代替了.
- py3status.conf -> py3status 配置文件，用于屏幕下方或者上方的status_bar配置，展示系统相关信息，及窗口序号；
## emacs
- emacs -> 包含所有emacs配置，我使用了现有配置[Spacemacs](https://www.spacemacs.org)，keyfreq是自定义的一个layer，放在 ``~/.emacs.d/layers/+tools/``目录下，用于统计按键频率，方便对工作流进行优化改造；
## samba
- samba -> 包含samba共享配置，需要手动创建自己的smb账号密码；

![](https://raw.githubusercontent.com/jadegong/dotfiles/master/2020-12-18-095830_1920x1200_scrot.png)
![](https://raw.githubusercontent.com/jadegong/dotfiles/master/emacs_Screenshot_2022-08-13_17-22-33.png)
![](https://raw.githubusercontent.com/jadegong/dotfiles/master/Screenshot_2022-09-08_gvim.png)
