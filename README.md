# Vim config

Another Vim config. Insane enough to be *mine*.

## Installation

To install clone this repository onto your machine and create symlinks for
config files in your home directory. The following command does the same.

```sh
sh -c "`curl -fsSL https://raw.github.com/vitalk/sanevi/master/install.sh`"
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
- Syntax highlighting for Markdown, JavaScript, CoffeeScript, Jinja, LESS, Ansible, and HTML.

## License

Copyright (c) by Vital Kudzelka. Use it for Good not Evil.

Distributed under the [MIT license](http://mit-license.org/vitalk).
