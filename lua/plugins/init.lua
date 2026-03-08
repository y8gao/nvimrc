return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- Themes
  { "tanvirtin/monokai.nvim", lazy = true },
  { "folke/tokyonight.nvim", lazy = true },
  { "catppuccin/nvim", name = "catppuccin", lazy = true },
  { "navarasu/onedark.nvim", lazy = true },
  { 'maxmx03/solarized.nvim', lazy = true },
  {
    "nvchad/ui",
    config = function()
      require "nvchad.options"
    end,
  },

  -- Bufferline for tabs
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    event = "VeryLazy",
    config = function()
      vim.opt.showtabline = 2
      require("bufferline").setup({
        options = {
          mode = "buffers",
          separator_style = "slant",
          diagnostics = "nvim_lsp",
          show_close_icon = true,
          show_buffer_close_icons = true,
          offsets = {
            {
              filetype = "neo-tree",
              text = "Neo-tree",
              highlight = "Directory",
              text_align = "left",
            },
          },
        },
      })
    end,
  },

  -- Lualine status line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    config = function()
      require("lualine").setup(require "configs.lualine")
    end,
  },

  -- Theme switcher
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require "configs.themery"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Telescope",
    opts = require "configs.telescope",
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",
    opts = require "configs.neotree",
  },

  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    opts = require "configs.gitsigns",
  },

  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    opts = require "configs.cmp",
    config = function(_, opts)
      require("cmp").setup(opts)
    end,
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = require "configs.which-key",
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show { global = false }
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },

  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    opts = require "configs.trouble",
    keys = {
      { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
      { "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)" },
      { "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Symbols (Trouble)" },
      { "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", desc = "LSP Definitions / references / ... (Trouble)" },
      { "<leader>xL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },
      { "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)" },
    },
  },

  {
    "kosayoda/nvim-lightbulb",
    event = "VeryLazy",
    opts = require "configs.lightbulb",
  },

  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    opts = require "configs.mason",
  },

  {
    "williamboman/mason-lspconfig.nvim",
    event = "VeryLazy",
    opts = require "configs.mason-lspconfig",
  },

  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = require "configs.lsp-signature",
  },

  {
    "dnlhc/glance.nvim",
    cmd = "Glance",
    opts = require "configs.glance",
    keys = {
      { "gd", "<cmd>Glance definitions<CR>", desc = "Glance definitions" },
      { "gr", "<cmd>Glance references<CR>", desc = "Glance references" },
      { "gi", "<cmd>Glance implementations<CR>", desc = "Glance implementations" },
    },
  },

  -- Markdown preview in floating window
  {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    -- build = function()
      -- vim.fn.system { "deno", "run", "-A", "https://deno.land/x/esbuild@v0.13.15/mod.js", "bundle", "https://cdn.jsdelivr.net/npm/peek.nvim@latest/web/peek.js", "--bundle", "--minify", "--outfile=" .. vim.fn.stdpath("data") .. "/lazy/peek.nvim/public/main.bundle.js" }
    -- end,
    build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup({ app = "browser" })
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
    keys = {
      { "<leader>mp", "<cmd>PeekOpen<CR>", desc = "Open markdown preview" },
    },
  },

  {
    "j-hui/fidget.nvim",
    event = "VeryLazy",
    opts = require "configs.fidget",
  },

  -- GitHub Copilot
  {
    "github/copilot.vim",
    event = "VeryLazy",
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      vim.keymap.set("i", "<C-g>", 'copilot#Accept("<CR>")', { expr = true, noremap = true, silent = true })
    end,
  },

  -- Copilot Chat
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim" },
    },
    event = "VeryLazy",
    config = function()
      require("CopilotChat").setup({
        debug = false,
      })
    end,
    keys = {
      { "<leader>ccx", "<cmd>CopilotChatToggle<CR>", desc = "Toggle Copilot Chat" },
      { "<leader>cce", "<cmd>CopilotChatExplain<CR>", mode = { "n", "v" }, desc = "Explain code" },
      { "<leader>cct", "<cmd>CopilotChatTests<CR>", mode = { "n", "v" }, desc = "Generate tests" },
      { "<leader>ccf", "<cmd>CopilotChatFix<CR>", mode = { "n", "v" }, desc = "Fix code" },
      { "<leader>ccd", "<cmd>CopilotChatDocs<CR>", mode = { "n", "v" }, desc = "Generate docs" },
    },
  },

  -- Terminal integration
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    event = "VeryLazy",
    opts = require "configs.toggleterm",
    keys = {
      { "<C-\\>", "<cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
      { "<leader>tv", "<cmd>ToggleTerm direction=vertical<CR>", desc = "Terminal vertical" },
      { "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>", desc = "Terminal horizontal" },
      { "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", desc = "Terminal float" },
      { "<leader>tt", "<cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
    },
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
