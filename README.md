meVim
=====
*My personal configurations for NeoVim, which by contrast to my vanilla vim config is a fully featured IDE for Python, Javascript, C++, Platform IO, Shell, Rust & Go*

Keymaps
-------
* Leader: `,`
* Pane Controls

Markdown Editing
----------------
### Vim Markdown Composer
A plugin that uses the Rust framework **Aurelius** to live-render markdown into a local server. It requires rust install, which can be done by entering this command into the command line, `curl https://sh.rustup.rs -sSf | sh`. Then it's installed into this configuration by entering into the `init.vim` file, this snippet of code below.
```viml
function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release
    else
      !cargo build --release --no-default-features --features json-rpc
    endif
  endif
endfunction

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }
```

There are various configurations that are unfortunately only written down into the help file, which is accessible from the vim command, `help markdown-composer`. The default local route to this page is [`http://[::1]:40447/`](http://[::1]:40447/)

#### Markdown Composer Options
* `g:markdown_composer_browser`: Specifies a browser for the plugin to use, if not specified, it will use the default.
* `g:markdown_composer_open_browser`: If set to `0`, then the plugin won't attempt to open the user's specified browser, requiring the user to open it to the local address manually
* `g:markdown_composer_external_renderer`: This allows an external command to be run by the server to render.
  * It does so by sending out text through **stdout** into the command, then back using **stdin**
  * Since doing this externally is slower than with the regular renderer, refresh rates might need to be altered
  * Ex: `let g:markdown_composer_external_renderer='pandoc -f markdown -t html'`
    * This uses the infamous `pandoc` to handle external rendering
* `g:markdown_composer_refresh_rate`: The rate in ms that new markdown should be sent from the buffer to the server, defaults *(0)* to every keystroke
* `g:markdown_composer_syntax_theme`: The theme that gets used to render code blocks with syntax highlighting
  * More info [here](https://highlightjs.org/static/demo/)
  * Variable should be set by the CSS file's path minus the `*.css` extension
  * The default is Github's style
* `g:markdown_composer_autostart`: Whether the server should start automatically whenever a markdown buffer is opened
  * Defaults to `1`, ie yes
* `g:markdown_composer_custom_css`: A list of custom CSS URIs that should be loaded instead of the Github Styles
  * Can be local paths and URLs
  * **NOTE** they **must** use absolute and prefixed schemes like so: `file:///home/euclio/markdown.css`

Javascript
----------
### TernJS

 


To-Do's
-------
* Miscellaneous
  * [x] Install Script
  * [x] Plugin Manager
  * [x] Tmux integration
  * [x] Pane Management w/ Keymaps
  * [x] Sufficient Defaults
  * [ ] noh binding, using leader key and/or defaults for substitutions to disable this
  * [ ] fuzzy finder
  * [ ] indentation grids
    * just use a light `|` character
  * [ ] Insert/Remove newlines from outside editor
* [ ] Javascript
  * [x] Proper Spacing
    * handled by `vim-jsx` & `vim-javascript`
  * [x] JSX recognition
  * [ ] ternjs with deoplete
  * [ ] graphQL highlighting
  * [ ] Snippets
  * [ ] JSDocs
    * [ ] `vim-jsdoc`
  * [ ] Function parameter completion
    * [ ] `jspc.vim`?
  * [ ] CTags support
    * consider `ramitos/jsctags`
  * [ ] EditorConfigs
  * [ ] Emmet configs for JSX
  * [ ] Local & Import Autocomplete
* [ ] HTML & CSS
  * [ ] Emmet & Keymaps
  * [ ] Tag Surrounds
  * [ ] File & Local Autocomplete
  * [ ] RGB highlighting
* [ ] Markdown Editing
  * [x] External Renderer
    * Handled by `vim-markdown-composer`
  * [ ] Pandoc Integration
  * [ ] Auto fold h2 & lower
  * [ ] Block Editing
  * [ ] Highlighting
  * [ ] Linting Grammar & Spelling *(write-good?)*
  * [ ] Latex Blocks
  * [ ] Ctags integration?
  * [ ] Automatic references link or bibilography
  * [ ] Better moving through large blocks of text
    * Perhaps using hard/soft wraps?
    * Perhaps using block focusing, where only one block is seen by choice
    * Should have some keymaps to better move through a block
  * [ ] Some kind of *org-mode*-like features
    * Perhaps `vim-wiki`
    * concealer syntaxes for markdown
  * [ ] Prose focused writing mode, *(think iA writer)*
  * [ ] Dictionary & Thesaurus features
* Go
  * [ ] Linting
  * [ ] Autocompletion
  * [ ] Basic doctype plugin
  * [ ] Style & config defaults, use [this][09] as a guide
  * [ ] NeoSnippet
  * [ ] `delve` for debugging
* [ ] Class & Function Tags
* [ ] FuzzyFinder with Keymaps
* [ ] Python
  * [ ] Linting
  * [ ] External Running
  * [ ] Beautify
  * [ ] Autocomplete
  * [ ] Horiz Ruler
* [ ] Copy Over Keymaps, and File Recognizers from Vim
* [ ] Previous Vim settings
* [ ] Git editing ? *maybe better for lvim*
* [ ] mvim
* [ ] Update Scripts
* [ ] Bash Aliases "mevim"
* [ ] Improve portability with xdg & dynamic filepaths: [link][100]

## References
1. [Good Sample Config][01]
2. [NeoVim config locations][02]
3. [nVim as IDE guide][03]
4. [r/neovim: neoVim JSX suggestions][04]
5. [Thoughtbot: tmux copy & paste][05]
6. [Medium(Victor Mourns): A better NERDTree Setup][06]
7. [Thoughtbot: Vim Splits][07]
8. [Github: euclio/vim-markdown-composer][08]
9. [Hackernoon: Go & NeoVim][09]
10. [Github: calitux/deoplete-ternjs][10]

[01]: http://bit.ly/2hoq9HF
[02]: http://bit.ly/2xoPJnm
[03]: http://bit.ly/2wI2bS6
[04]: http://bit.ly/2jUHA7h
[05]: http://bit.ly/2jRaGnL
[06]: http://bit.ly/2xZ9FAx
[07]: http://bit.ly/2y01Avj
[08]: https://github.com/euclio/vim-markdown-composer "Github: euclio/vim-markdown-composer"
[09]: https://hackernoon.com/my-neovim-setup-for-go-7f7b6e805876 "Hackernoon: Go & NeoVim"
[10]: https://github.com/carlitux/deoplete-ternjs "Github: calitux/deoplete-ternjs"

[100]: http://bit.ly/2y0UkPU
