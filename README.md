# dotfiles
Linux 开发环境配置文件
## zsh
- ~/.zshrc -> zsh 配置文件. 只改变了theme选项, 增加 zsh-autosuggestions zsh-syntax-highlighting 插件(需要git clone至 ~/.oh-my-zsh/plugins);增加fzf,yarn,nvm相关环境变量配置;
## vim
- ~/.(g)vimrc -> Linux (g)vim 配置文件(我主要开发前端，配置react和vue相关开发环境);
  使用vim8.2版本，新版本会出现兼容性问题，自定义按键启发源至 Spacemacs 按键配置,比如窗口类以 <leader>w(indow)快捷键开头，文件类以 <leader>f(ile)快捷键开头，搜索类以 <leader>s(earch)快捷键开头，根本不用花时间记忆，完全是按照单词首字母来设定;
  使用 [vim-plug](https://github.com/junegunn/vim-plug) 管理插件；
  使用fzf插件进行文件搜索，在fzf插件中使用ripgrep(rg)进行文本搜索,响应速度极快;
  需要自行安装fzf和ripgrep工具或者ag搜索工具；``sudo pacman -S fzf ripgrep the_silver_searcher``
### 安装须知
  - vim: 主要入口``~/.vimrc``以及``~/.gvimrc``, 将vim目录下的其他内容放到 ``$VIMRUNTIME`` 路径下，通常是 ``~/.vim/``，启动vim, 执行 ``:PlugInstall`` 即可。
  - nvim: 建立一个软连接 ``ln -s ~/.vimrc ~/.vim/init.vim``, 即可正常使用；
### 目录结构
  ftplugins: 存放 FileType 相关配置,会自动加载,包含一些针对特定文件绑定的快捷键配置;
  config: 存放主要配置；
      plugins: 该文件夹存放所有插件的配置；
        mappings.vim: 所有插件相关的快捷键配置；
        *.vim: 相关插件的配置；
      vimrc.vim: ～/.vimrc 默认加载该文件，在该文件中加载所有配置文件；
      general.vim: 通用配置；
      load_plugins.vim: 加载所有的插件列表；
      mappings.vim: 所有自定义快捷键配置文件；
## i3wm
- config -> [i3wm](https://i3wm.org/) 配置文件，使用 font awesome icon-font; 需要特别注意自启动程序相关配置;(我的配置放在 ~/.config/i3/config)
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
