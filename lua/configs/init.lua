return {
  {
    "deponian/vim-loupe",
    lazy = false,
    keys = {
      -- <Leader>n -- Disable highlighting of search results
      -- (mnemonic: [n]o highlighting)
      { "<Leader>n", "<Plug>(LoupeClearHighlight)" }
    },
  },

  {
    "nvim-tree/nvim-web-devicons",
    config = function ()
      require("nvim-web-devicons").set_icon {
        log = {
          icon = "󰮗",
          color = "#ffffff",
          cterm_color = "231",
          name = "Log"
        }
      }
    end
  },

  -- save files as root
  {
    "lambdalisue/suda.vim",
    keys = {
      -- <Leader>W -- save buffer with sudo
      -- (mnemonic: [w]rite)
      { "<Leader>W", "<cmd>write suda://%<CR>" }

    },
  },

  {
    "deponian/nvim-base64",
    keys = {
      -- Decode/encode selected sequence from/to base64
      -- (mnemonic: [b]ase64)
      { "<Leader>b", "<Plug>(FromBase64)", mode = "x" },
      { "<Leader>B", "<Plug>(ToBase64)", mode = "x" },
    },
    config = function()
      require("nvim-base64").setup()
    end
  },

  {
    "echasnovski/mini.splitjoin",
    lazy = false,
    config = function ()
      require("mini.splitjoin").setup()
    end
  },

  { "tpope/vim-commentary" },
  { "tpope/vim-fugitive" },
  { "tpope/vim-repeat" },
  { "tpope/vim-surround" },
  { "nvim-lua/plenary.nvim", lazy = true },

  -- language/syntax/filetype plugins
  { "ch-danreif/haproxy.vim" },
  { "mtdl9/vim-log-highlighting" },
  { "mustache/vim-mustache-handlebars" },
  { "nfnty/vim-nftables" },
  { "pearofducks/ansible-vim" },
  { "towolf/vim-helm" },
  { "tpope/vim-git" },
  { "yasuhiroki/github-actions-yaml.vim" },
}

