---
layout: post
title: neovim treesitter indentation isn't there yet
tags: vim neovim
---

For no particular reason other than novelty,
I've been trying to embrace as much of the new hotness with regards to neovim.

I tried enabling the [indentation][] module, and was seeing all kinds of weird inconsistencies,
where it would seeem like nothing was getting indented, then it would work, just maddening stuff.

Eventually I thought to actually read some [issues][] on the vim-ruby repo and saw some things
to the effect that the indentation depends on highlighting groups.
I don't know if this is something done by other filetypes, but it means that with ruby
you really need to enable the older regex-powered highlighting as well.

Like that issue says, do something like the following in your treesitter config:

```lua
highlight = {
  enable = true,
  additional_vim_regex_highlighting = { "ruby" }
},
```

I then looked at the [ruby indent][] queries bundled with nvim-treesitter,
and they're a little sparse, but should do more than they seem to on their own.

I dunno, no conclusion.
I should look into writing indent queries, see if I can beef them up a little.

[ruby indent]: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/queries/ruby/indents.scm
[issues]: https://github.com/vim-ruby/vim-ruby/issues/451
[indentation]: https://github.com/nvim-treesitter/nvim-treesitter#indentation
