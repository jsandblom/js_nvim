return {

  {
    "nvim-neo-tree/neo-tree.nvim",
      keys = {
        { "<leader>ft", "<cmd>Neotree toggle<cr>", desc = NeoTree },
      },
      config = function()
        require("neo-tree").setup()
      end,
  },

  -- the colorscheme should be available when starting Neovim
  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },

  -- I have a separate config.mappings file where I require which-key.
  -- With lazy the plugin will be automatically loaded when it is required somewhere
  { 
    "folke/which-key.nvim", 
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {}
  },

  -- { "folke/neodev.nvim" },

  -- { "folke/neoconf.nvim", cmd = "Neoconf" },
  
  {
    "nvim-neorg/neorg",
    -- lazy-load on filetype
    ft = "norg",
    -- options for neorg. This will automatically call `require("neorg").setup(opts)`
    opts = {
      load = {
        ["core.defaults"] = {},
      },
    },
  },

  {
    "dstein64/vim-startuptime",
    -- lazy-load on a command
    cmd = "StartupTime",
    -- init is called during startup. Configuration for vim plugins typically should be set in an init function
    init = function()
      vim.g.startuptime_tries = 10
    end,
  },

  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {}
  },

  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },

  {
    "folke/paint.nvim",
    opts = {
      -- filter can be a table of buffer options that should match,
      -- or a function called with buf as param that should return true.
      -- The example below will paint @something in comments with Constant
      filter = { filetype = "lua" },
      pattern = "%s*%-%-%-%s*(@%w+)",
      hl = "Constant",
    }
  },

  { 
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "BurntSushi/ripgrep",
      "sharkdp/fd",
      "nvim-treesitter/nvim-treesitter"
    },
  },
  
  { 
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },

  { 
    "gbprod/yanky.nvim"
  },

  { 
    "nvim-neo-tree/neo-tree.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  },

  { "neovim/nvim-lspconfig" }, -- LazyVim/lua/lazyvim/plugins/lsp/init.lua

  { 
    "anuvyklack/windows.nvim",
    dependencies = {
      "anuvyklack/middleclass",
      "anuvyklack/animation.nvim",
    },
    opts = {
      vim.o.winwidth = 10,
      vim.o.winminwidth = 10,
      vim.o.equalalways = false
    },
  },

  { "nvim-lua/plenary.nvim" },

  { "nvim-lualine/lualine.nvim" },

  {
    "L3MON4D3/LuaSnip"
  },

  {
    "saadparwaizi/cmp_luasnip"
  },
  
  {
    "hrsh7th/nvim-cmp",
    -- load cmp on InsertEnter
    event = "InsertEnter",
    -- these dependencies will only be loaded when cmp loads
    -- dependencies are always lazy-loaded unless specified otherwise
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
    },
    config = function()
      -- ...
    end,
  },

  {
    "jalvesaq/cmp-nvim-r",
  },

  {
    "jalvesaq/R-Vim-runtime"
  },

  -- if some code requires a module from an unloaded plugin, it will be automatically loaded.
  -- So for api plugins like devicons, we can always set lazy=true
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- you can use the VeryLazy event for things that can
  -- load later and are not important for the initial UI
  { "stevearc/dressing.nvim", event = "VeryLazy" },

  {
    "Wansmer/treesj",
    keys = {
      { "J", "<cmd>TSJToggle<cr>", desc = "Join Toggle" },
    },
    opts = { use_default_keymaps = false, max_join_length = 150 },
  },

  {
    "monaqa/dial.nvim",
    -- lazy-load on keys
    -- mode is `n` by default. For more advanced options, check the section on key mappings
    keys = { "<C-a>", { "<C-x>", mode = "n" } },
  },

  {
    "jalvesaq/nvim-r"
  },

  -- local plugins need to be explicitly configured with dir
  -- dir = "~/projects/secret.nvim" },

  -- you can use a custom url to fetch a plugin
  -- { url = "git@github.com:folke/noice.nvim.git" },

  -- local plugins can also be configure with the dev option.
  -- This will use {config.dev.path}/noice.nvim/ instead of fetching it from Github
  -- With the dev option, you can easily switch between the local and installed version of a plugin
  -- { "folke/noice.nvim", dev = true },
}
