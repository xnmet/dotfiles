Pre-installation
----------------
- fzf should be in the system.
- check for plug.vim (faster way).
- clipboard needs xclip, xsel.

Review
------
- fzf.vim: modify some commands & reuse others in easyfiles.
- text objects:
  - conflicts?
  - read again targets, textobj-user.
  - seek feature is awesome, can it do down and up?
  - important: vim-textobj-anyblock, vim-sandwich.
- wordmotion.vim: more rules. e.g. [f](|) { [x](|) }
- lexima.vim vs autopairs vs close on trigger.
- easymotion:
  - should walk in empty pairs e.g. ([]).
  - with incsearch?
  - 2 chars? vim-sneak
- consistency for _word_ definition between plugins.

me.vim
------
- write the docs & publish: easyfiles, highlight.
- create my colorscheme (done, matrix).

Missing features
----------------
- repeat command for visual & function.
- filetypes highlights.
- syntax checker.
- snippet engine.
- autocomplete smarter? not so simple or useful.
  - snippets.
  - keywords for all and/or active buffers.
  - omni for big projects only?
  - with documentation from somewhere?
- git branch (statusline, prompt, tabline?)
- fuzzy search in slash:
  - incsearch has it.
  - fzf can display all lines.
  - easy to search and replace.
- better workflow for search and replace.
- more scoped ripgrep: workdir, mru, buffers.
- nnn wrapper.

Thoughts
--------
- set should be builtin (because of colorscheme)?
- ctrl+o to normal mode in insert mode
- delete with register, e.g. y -> dd -> y
