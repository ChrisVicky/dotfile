return {
  ["goolord/alpha-nvim"] = {
    disable = false,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("custom.plugins.null-ls").setup()
    end,
  },

  ["Pocco81/AutoSave.nvim"] = {
    config = function()
      local autosave = require "autosave"

      autosave.setup {
        enabled = true,
        execution_message = "autosaved at : " .. vim.fn.strftime "%H:%M:%S",
        events = { "InsertLeave", "TextChanged" },
        conditions = {
          exists = true,
          filetype_is_not = {},
          modifiable = true,
        },
        clean_command_line_interval = 2500,
        on_off_commands = true,
        write_all_buffers = false,
      }
    end,
  },
  ["Pocco81/TrueZen.nvim"] = {
    cmd = {
      "TZAtaraxis",
      "TZMinimalist",
      "TZFocus",
    },
    config = function()
      -- check https://github.com/Pocco81/TrueZen.nvim
    end
  },

  ["luukvbaal/stabilize.nvim"] = {
    config = function()
      require("stabilize").setup()
    end
  },

  ["nvim-telescope/telescope-media-files.nvim"] = {
    after = "telescope.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          media_files = {
            filetypes = { "png", "webp", "jpg", "jpeg" },
            find_cmd = "rg", -- find command (defaults to `fd`)
          },
        },
      }
      require("telescope").load_extension "media_files"
    end,
  },
  ["iamcco/markdown-preview.nvim"] = {
    as = "markdownPreview",
    run = "cd app && npm install",
    ft = { "markdown" },
  },
  ["catppuccin/nvim"] = {
    as = "catppuccin",
  },
  ["neoclide/coc.nvim"] = {
    branch='release',
  },
  ["ferrine/md-img-paste.vim"] = {
    as = "mdimgpaste",
  },
  ["dhruvasagar/vim-table-mode"] = {
    as = "tablemode",
    vim.cmd("let g:table_mode_corner_corner='+'"),
  },
  ["babaybus/DoxygenToolkit.vim"] = {
    as = "Doxygen",
  },

  -- Debugger
  -- : This is nvim - dap --> For gdb ui
  ["mfussenegger/nvim-dap"] = {
    config = function()
      require("custom.plugins.dap.dapconfig")
    end,
  },
  ["rcarriga/nvim-dap-ui"] = {
    requires = {"mfussenegger/nvim-dap"},
    config = function()
      require("custom.plugins.dap.dapUi")
    end,
  },

  ["nvim-telescope/telescope-dap.nvim"] = {
    after = "telescope.nvim",
    config = function()
      require('telescope').load_extension('dap')
    end,
  },
  ["theHamsta/nvim-dap-virtual-text"] = {
    config=function()
      require("custom.plugins.dap.nvimDapVirtualText")
    end,
  },
}
