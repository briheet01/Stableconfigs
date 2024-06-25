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

  --- Notification ui

  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
    },
  },

  --- Top bufferline that shows all the open tabs

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

  --- Statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {
      options = {
        -- theme = "purple",
      },
    },
  },

  --- Zenmode for distraction free coding, increases kitty font size
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      plugins = {
        gitsigns = true,
        tmux = true,
        kitty = { enabled = true, font = "+2" },
      },
    },
    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },

  --- Animations
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },

  -- frontui change
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
