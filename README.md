# Vim config

Another Vim config. Insane enough to be *mine*.

## Installation

### For lazy people

```sh
bash -c "`curl -fsSL https://raw.github.com/vitalk/sanevi/master/install.sh`"
```

### For those who actually care about what is done

- Clone repository onto your machine

  ```sh
  git clone https://github.com/vitalk/sanevi ~/.vim
  ```

- Install the Vim plugin manager, e.g. download [Plug](https://github.com/junegunn/vim-plug) and put it in `~/.vim/autoload`

  ```sh
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```

- Create symlink for `.vimrc` in your home directory

  ```sh
  ln -s ~/.vim/vimrc ~/.vimrc
  ```

- Create symlink for `.ctags` in your home directory

  ```sh
  ln -s ~/.vim/ctags ~/.ctags
  ```

- Install the plugins in use

  ```sh
  vim +PlugInstall +qall
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
- Use [ripgrep](https://github.com/BurntSushi/ripgrep) code searcher instead of grep when available.
- Syntax highlighting for
  [Markdown](https://github.com/plasticboy/vim-markdown),
  [JavaScript](https://github.com/vitalk/vim-javascript),
  [CoffeeScript](https://github.com/kchmck/vim-coffee-script),
  [Jinja](https://github.com/lepture/vim-jinja),
  [Less](https://github.com/groenewege/vim-less),
  [Ansible](https://github.com/chase/vim-ansible-yaml),
  and [HTML](https://github.com/othree/html5.vim).

### Git goodness

All git-related mappings are start with the `(git)` prefix which, by default,
mapped to <kbd>space</kbd>+<kbd>g</kbd> combination. 

Key         | Description
------------|-------------
`(git)it`   | Start a git command
`(git)s`    | Bring up the output of git status in the preview window
`(git)co`   | Record changes to the repository
`(git)ca`   | Rewrite `HEAD` commit
`(git)ap`   | Interactively choose hunks of path between the index and the work tree and add them to the index
`(git)d`    | Perform a vimdiff against the current file in the given revision
`(git)ri`   | Start interactive rebase in the current branch
`(git)re`   | Happy grepping in repository
`(git)l`    | Load all previous revisions of the current file into the quickfix list
`(git)b`    | Run git-blame on the file and open the results in a scroll bound vertical split
`(git)w`    | Write to the current file’s path, stage the results and reload buffer (to ensure the git gutter is updated)
`(git)r`    | Checkout the current file’s path
`(git)ss`   | Stash the changes in a dirty working directory away
`(git)sp`   | Pop stashed changes back
`(git)pu`   | Start git push command
`(git)pl`   | Start git pull command

### Markdown goodness

- Convert the line under cursor into appropriate markdown header
  via the <kbd>leader</kbd>+<kbd>1-6</kbd> combinations;
- Open fenced code block into separate buffer (with appropriate filetype,
  syntax highlighting and snippets) via the <kbd>shift</kbd>+<kbd>e</kbd>;
- A sane and [useful mappings](https://github.com/vitalk/vim-simple-todo) to
  create and manage task lists. 


## License

Distributed under the [MIT license](http://mit-license.org/vitalk).

© 2016 by Vital Kudzelka. Use it for Good not Evil.
