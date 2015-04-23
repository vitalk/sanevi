# Vim config

Another Vim config. Insane enough to be *mine*.

## Installation

1. Clone repository onto your machine

  ```sh
  git clone https://github.com/vitalk/sanevi ~/.vim
  ```

2. Install the Vim plugin manager, e.g. download [Plug](https://github.com/junegunn/vim-plug) and put it in `~/.vim/autoload`

  ```sh
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```

3. Create symlink for `.vimrc` in your home directory

  ```sh
  ln -s ~/.vim/vimrc ~/.vimrc
  ```

4. Install the plugins in use

  ```sh
  vim +PlugInstall +qall
  ```

The following command does the same for you:

```sh
bash -c "`curl -fsSL https://raw.github.com/vitalk/sanevi/master/install.sh`"
```

## Customization

Put your customization in `~/.vimrc.local`. This config overrides the global
one.

For example, your config might look like this:

```vim
colorscheme solarized
set backgroud=dark

augroup ft_vim_anywhere
  au!
  au BufNewFile,BufRead **/vim-anywhere/doc-** setl ft=markdown
augroup END
```

## Features

- Manage plugins via [Plug](https://github.com/junegunn/vim-plug).
- Use [Ctrl-P](https://github.com/kien/ctrlp.vim) for fuzzy file/buffer/tag finding.
- Use [Ag](https://github.com/ggreer/the_silver_searcher) code searcher instead of grep when available.
- Syntax highlighting for
  [Markdown](https://github.com/plasticboy/vim-markdown),
  [JavaScript](https://github.com/vitalk/vim-javascript),
  [CoffeeScript](https://github.com/kchmck/vim-coffee-script),
  [Jinja](https://github.com/lepture/vim-jinja),
  [Less](https://github.com/groenewege/vim-less),
  [Ansible](https://github.com/chase/vim-ansible-yaml), and HTML.

## License

Copyright (c) by Vital Kudzelka. Use it for Good not Evil.

Distributed under the [MIT license](http://mit-license.org/vitalk).
