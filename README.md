# :sunrise_over_mountains: vim-textobj-symbols

This plugin adds various symbols as surrounding text-objects.

Table of Contents
-----------------
1. [Installation](#installation)
2. [Usage](#usage)

## Installation

This plugin depends on [Kana's](https://github.com/kana) plugin
[vim-textobj-user](https://github.com/kana/vim-textobj-user), so it should be
installed if not already done so.

Install using your favorite package manager, or use Vim's built-in package
support:

#### Vim 8 Native Package Manager

```bash
mkdir ~/.vim/pack/plugin/start/vim-textobj-user
git clone https://github.com/kana/vim-textobj-user.git ~/.vim/pack/plugin/start/vim-textobj-user

mkdir ~/.vim/pack/plugin/start/vim-textobj-symbols
git clone https://github.com/EvanQuan/vim-textobj-symbols.git ~/.vim/pack/plugin/start/vim-textobj-symbols
```

#### [Vim-Plug](https://github.com/junegunn/vim-plug)

1. Add `Plug 'kana/vim-textobj-user'` to your `vimrc` file.
2. Add `Plug 'EvanQuan/vim-textobj-symbols'` to your `vimrc` file.
3. Reload your `vimrc` or restart.
4. Run `:PlugInstall`

#### [Vundle](https://github.com/VundleVim/Vundle.vim)

1. Add `Plugin 'kana/vim-textobj-user'` to your `vimrc` file.
2. Add `Plugin 'EvanQuan/vim-textobj-symbols'` to your `vimrc` file.
3. Reload your `vimrc` or restart.
4. Run `:BundleInstall`

#### [NeoBundle](https://github.com/Shougo/neobundle.vim)

1. Add `NeoBundle 'EvanQuan/vim-textobj-symbols'` to your `vimrc` file.
2. Add `NeoBundle 'kana/vim-textobj-user'` to your `vimrc` file.
3. Reload your `vimrc` or restart.
4. Run `:NeoUpdate`

#### [Pathogen](https://github.com/tpope/vim-pathogen)

```bash
git clone https://github.com/kana/vim-textobj-user.git ~/.vim/bundle/vim-textobj-user

git clone https://github.com/EvanQuan/vim-textobj-symbols.git ~/.vim/bundle/vim-textobj-symbols
```

## Usage

**TODO elaborate on other text objects**

The **textobj-symbols** plugin provides two new text-objects which are triggered
by `a|` and `i|` respectively.

For example, suppose you have the following markdown table:

```markdown
| Cats         | Dogs     |
|:------------:|:--------:|
| Mr. Whiskers | Snuffles |
| Oscar        | Bella    |
```
If you want to change 'Mr. Whiskers' to 'Tigger', you can do the following
(cursor position marked by \*):

`| Mr. Wh*iskers |` and type `ci|` to get `|*|`, where you can make your
replacement `| Tigger |` .

Another example is if you are writing Vim help documentation and have
a hot-link, which is a word surrounded with pipes as such:

```
|bad tag|
```

If you want to delete the hot-link, you can do the following (cursor position
marked by \*):

`|bad*tag|` and type `da|`, which will delete the hot-link.
