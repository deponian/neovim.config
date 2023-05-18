local config = vim.fn.stdpath("config")

-- general options
vim.opt.backupskip:append("*.re,*.rei")             -- prevent bsb's watch mode from getting confused
vim.opt.completeopt = "menu"                        -- show completion menu (for nvim-cmp)
vim.opt.completeopt:append("menuone")               -- show menu even if there is only one candidate (for nvim-cmp)
vim.opt.completeopt:append("noselect")              -- don't automatically select candidate (for nvim-cmp)
vim.opt.cursorline = true                           -- highlight current line
vim.opt.diffopt:append("linematch:100")             -- enable more accurate diff
vim.opt.emoji = false                               -- don't assume all emoji are double width
vim.opt.fillchars:append({ diff = '⁚' })            -- TWO DOT PUNCTUATION (U+205A)
vim.opt.fillchars:append({ eob = ' ' })             -- suppress ~ at EndOfBuffer
vim.opt.foldlevelstart = 99                         -- start unfolded
vim.opt.foldmethod = 'indent'                       -- use 'indent' method if you need faster folding
vim.opt.formatoptions:append('ro')                  -- smart auto-commenting
vim.opt.ignorecase = true                           -- ignore case when searching
vim.opt.inccommand = 'nosplit'                      -- live highlighting of :s results
vim.opt.lazyredraw = true                           -- don't bother updating screen during macro playback
vim.opt.linebreak = true                            -- wrap long lines at characters in 'breakat'
vim.opt.modelines = 5                               -- scan this many lines looking for modeline
vim.opt.mousemodel = 'extend'                       -- disable right-click popup-menu
vim.opt.mousescroll = 'ver:1,hor:1'                 -- smoother scrolling
vim.opt.number = true                               -- show line numbers in gutter
vim.opt.pumblend = 0                                -- pseudo-transparency for popup-menu
vim.opt.scrolloff = 5                               -- start scrolling 5 lines before edge of viewport
vim.opt.shell = 'bash'                              -- shell to use for `!`, `:!`, `system()` etc.
vim.opt.shortmess:append({I = true})                -- Don't neovim start screen
vim.opt.shortmess:append({c = true})                -- completion messages
vim.opt.shortmess:append({s = true})                -- Don't echo search wrap messages.
vim.opt.showcmd = false                             -- don't show extra info at end of command line
vim.opt.showmode = false                            -- don't show in statusline -- INSERT --, -- VISUAL -- and etc.
vim.opt.sidescrolloff = 3                           -- same as scrolloff, but for columns
vim.opt.smartcase = true                            -- enable case-sensitive search only if there is an uppercase letter in the search pattern
vim.opt.spellcapcheck = ''                          -- don't check for capital letters at the start of a sentence
vim.opt.spellfile = config .. '/spell/en.utf-8.add' -- word list file where words are added for the zg and zw commands
vim.opt.splitbelow = true                           -- open horizontal splits below the current window
vim.opt.splitright = true                           -- open vertical splits to the right of the current window
vim.opt.switchbuf = 'usetab'                        -- try to reuse windows/tabs when switching buffers
vim.opt.synmaxcol = 500                             -- don't bother syntax highlighting long lines
vim.opt.termguicolors = true                        -- use guifg/guibg instead of ctermfg/ctermbg in the terminal
vim.opt.undofile = true                             -- save undo history to an undo file
vim.opt.updatecount = 80                            -- update swapfiles every 80 typed chars
vim.opt.updatetime = 250                            -- CursorHold interval
vim.opt.virtualedit = 'block'                       -- allow the cursor to move where there is no text in visual block mode
vim.opt.visualbell = true                           -- stop annoying beeping for non-error errors
vim.opt.whichwrap = 'b,s'                           -- allow <BS>/h/l/<Left>/<Right>/<Space> and ~ to cross line boundaries
vim.opt.wildcharm = 26                              -- ('<C-z>') substitute for 'wildchar' (<Tab>) in macros
vim.opt.wildignore:append('*.o,*.rej')              -- patterns to ignore during file-navigation
vim.opt.wildmode = 'longest:full,full'              -- shell-like autocomplete to unambiguous portion

-- invisible chars
vim.opt.listchars = {
  eol = '$',
  space = '.',
  nbsp = '⦸',
  tab = '>-',
  trail = '~',
  extends = '»',
  precedes = '«',
}

-- indentation options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.smartindent = true
vim.opt.shiftround = true

-- colorscheme
-- these settings has to be placed AFTER set termguicolors 
require('onedark').setup  {
  -- Main options --
  style = 'deep', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
  transparent = true,  -- Show/hide background
  term_colors = true, -- Change terminal color as per the selected theme style
  ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
  cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
  -- toggle theme style ---
  toggle_style_key = nil, -- Default keybinding to toggle
  toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

  -- Change code style ---
  -- Options are italic, bold, underline, none
  -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
  code_style = {
    comments = 'italic',
    keywords = 'none',
    functions = 'none',
    strings = 'none',
    variables = 'none'
  },

  -- Custom Highlights --
  colors = {}, -- Override default colors
  highlights = {
    VertSplit = {fg = '$bg1'},

    FloatBorder = {fg = '$bg1', bg = 'none'},
    NormalFloat = {fg = '$fg', bg = 'none'},

    DiffText = {fg = 'none', bg = '#1d5c8c'},
    DiffAdd = {fg = 'none', bg = '#013325'},
    DiffDelete = {fg = '#8f8f8f', bg = '#331c1e'},
  },

  -- Plugins Config --
  diagnostics = {
    darker = true, -- darker colors for diagnostic
    undercurl = true,   -- use undercurl instead of underline for diagnostics
    background = true,    -- use background color for virtual text
  },
}

vim.cmd('colorscheme onedark')

-- https://github.com/neovim/neovim/issues/9800
vim.cmd('highlight CursorLine ctermfg=white guibg=#21283b')
