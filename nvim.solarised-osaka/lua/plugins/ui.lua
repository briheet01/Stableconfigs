return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = {
          skip = true,
        },
      })
      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
    },
  },

  -- {
  -- "b0o/incline.nvim",
  -- dependencies = { "craftzdog/solarised-osaka.nvim" },
  -- event = "BufReadPre",
  -- priority = 1200,
  -- config = function()
  -- local colors = require("solarized-osaka.colors").setup()
  -- require("incline").setup({
  -- highlight = {
  -- groups = {
  -- InclineNormal = {
  -- guibg = colors.magenta500,
  -- guifg = colors.base04,
  -- },
  -- InclineNormalNC = {
  -- guifg = colors.violet500,
  -- guibg = colors.base03,
  -- },
  -- },
  -- },
  -- window = { margin = { vertical = 0, horizontal = 1 } },
  -- hide = {
  -- cursorline = true,
  -- },
  -- render = function(props)
  -- local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
  -- end,
  -- })
  -- end,
  -- },

  -- buffer line
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        mode = "tabs",
        -- separator_style = "slant",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {
      options = {
        thme = "purple",
      },
    },
  },

  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      plugins = {
        gitsigns = true,
        tmux = true,
        kitty = { enabled = false, font = "+2" },
      },
    },
    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },

  -- animations
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
██████╗ ██████╗ ██╗██╗  ██╗███████╗███████╗████████╗
██╔══██╗██╔══██╗██║██║  ██║██╔════╝██╔════╝╚══██╔══╝
██████╔╝██████╔╝██║███████║█████╗  █████╗     ██║   
██╔══██╗██╔══██╗██║██╔══██║██╔══╝  ██╔══╝     ██║   
██████╔╝██║  ██║██║██║  ██║███████╗███████╗   ██║   
╚═════╝ ╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚══════╝╚══════╝   ╚═╝   
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
