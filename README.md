# :sunrise_over_mountains: vim-textobj-delimiters

This plugin adds various symbols as delimiting text-objects.

Block delimiters are symbols that mark the beginning and end of a region of
text. With Vim's text-objects, these delimited text sections can be edited
with operators and motions. The block delimiters that Vim already support
include `(parentheses)`, `[brackets]`, `{braces}`, `"double quotes"`,
`'single quotes'`, `<angled brackets>`, and `<a>tags<\a>`. This plugin adds
several additional block delimiters.

Table of Contents
-----------------
1. [Installation](#installation)
2. [Symbols](#symbols)
3. [Usage](#usage)

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

mkdir ~/.vim/pack/plugin/start/vim-textobj-delimiters
git clone https://github.com/EvanQuan/vim-textobj-delimiters.git ~/.vim/pack/plugin/start/vim-textobj-delimiters
```

#### [Vim-Plug](https://github.com/junegunn/vim-plug)

1. Add `Plug 'kana/vim-textobj-user'` to your `vimrc` file.
2. Add `Plug 'EvanQuan/vim-textobj-delimiters'` to your `vimrc` file.
3. Reload your `vimrc` or restart.
4. Run `:PlugInstall`

#### [Vundle](https://github.com/VundleVim/Vundle.vim)

1. Add `Plugin 'kana/vim-textobj-user'` to your `vimrc` file.
2. Add `Plugin 'EvanQuan/vim-textobj-delimiters'` to your `vimrc` file.
3. Reload your `vimrc` or restart.
4. Run `:BundleInstall`

#### [NeoBundle](https://github.com/Shougo/neobundle.vim)

1. Add `NeoBundle 'EvanQuan/vim-textobj-delimiters'` to your `vimrc` file.
2. Add `NeoBundle 'kana/vim-textobj-user'` to your `vimrc` file.
3. Reload your `vimrc` or restart.
4. Run `:NeoUpdate`

#### [Pathogen](https://github.com/tpope/vim-pathogen)

```bash
git clone https://github.com/kana/vim-textobj-user.git ~/.vim/bundle/vim-textobj-user

git clone https://github.com/EvanQuan/vim-textobj-delimiters.git ~/.vim/bundle/vim-textobj-delimiters
```

## Symbols

The following symbols are now recognized as block delimiters, marking the
start and end of a region of text:

| Symbol | Name            |
|:------:|:---------------:|
| *      | asterisk        |
| \      | backslash       |
| :      | colon           |
| $      | dollar sign     |
| =      | equal sign      |
| -      | minus sign/dash |
| %      | percent sign    |
| .      | period          |
| \|     | pipe            |
| +      | plus sign       |
| ?      | question mark   |
| /      | slash           |
| _      | underscore      |

*But what about commas?*

[vim-textobj-parameter](https://github.com/sgur/vim-textobj-parameter)
provides support for function parameters or comma-separated lists.

## Usage

Similar to how quotes, parentheses, and brackets amongst other block
delimiters can mark the start and end of a region of text and can have edited
with the 'c' (change), 'd' (delete), 'v' (visual) and 'y' (yank) operators,
vim-textobj-delimiters provides several new text-objects which are triggered
by `a` and `i` motions. While there may be any number of uses for these
delimiters, here are some examples for where they may be used.

#### Asterisks

Selections of text surrounded by asterisks (\*) is fairly common in markdown
files, marking `*italicized*` or `**bold**` text.

#### Backslash

In Windows-style path names, directories are `separated\with\backslashes`.

#### Colon

For Vim modelines, values are delimited with colons, such as:

```vim
vim:tw=78:ts=8:ft=help:norl:
```

Certain tags, such as markdown emojis are also also delimited with colons: >

```markdown
:sunrise_over_mountains:
```

#### Dollar Sign

In LaTeX files, inline math mode is delimited with `$single dollar signs$`,
while `$$double dollar signs$$` delimits display math mode.

#### Equal Sign

In certain text formats, titles are delimited with equal sign:

```
=== such as this ===
```

#### Minus Sign/Dash

Languages like Lisp and css often use kebab case variable names, which
`separate-words-with-dashes`. In webiste URLs, text of certain directories or
titles are often in kebab case as well.

#### Percent Sign

In some web templates, language boundaries are

```
<% surrounded with template delimiters such as this %>
```

#### Period

In many programming languages, periods denote member variables of a class or
object, be it an attribute or method. If these member variables are written in
`snake_case`, or `kebab-case`, then using **word** or **WORD** text-objects will
not be enough to edit them. For example:

```
foo.delete-this.bar
foo.delete_this.bar
```

#### Pipe

Hot-links in Vim help documentation and markdown tables delimit text with
pipe characters.

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

#### Plus Sign

In mathematical expressions or string concatenation, certain text may
incidentally be delimited with plus signs such as:

```
a = 4 + 457 + 12

message = "Hello" + "there" + "General" + "Kenobi"
```

Admittedly, there does not seem to be much use to this as the quote and
word text objects can achieve the same thing.

#### Question Mark

In XML, processing instructions are
```
<? delimited with question marks ?>
```

#### Slash

In website URLs and Unix-style path names, directories are
`separated/with/slashes`.

#### Underscore

Languages like C, Python, and Ruby often use snake case variable names, which
`separate_words_with_underscores`. In website URLs, text of certain
directories or titles are often in snake case as well.
