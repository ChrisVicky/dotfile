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
  ["Pocco81/auto-save.nvim"]={
    config = function()
      require("auto-save").setup{

      }
    end,
  },
  ["folke/trouble.nvim"] = {
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup{}
    end,
  }, ["kyazdani42/nvim-web-devicons"] = {
    config = function()
      require("nvim-web-devicons").setup{
        -- your personnal icons can go here (to override)
        -- you can specify color or cterm_color instead of specifying both of them
        -- DevIcon will be appended to `name`
        override = {
          zsh = {
            icon = "",
            color = "#428850",
            cterm_color = "65",
            name = "Zsh"
          }
        };
        -- globally enable default icons (default to false)
        -- will get overriden by `get_icons` option
        default = true;
      }
    end,
  },
  ["folke/todo-comments.nvim"] = {
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup{}
    end,
  },
  ["iamcco/markdown-preview.nvim"] = {
    run = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  ["neovim/nvim-lspconfig"]={
    config=function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- NERDTree Plugins
  ["preservim/nerdtree"]={},
  ["ryanoasis/vim-devicons"]={},
  ["Xuyuanp/nerdtree-git-plugin"]={},
  ["tiagofumo/vim-nerdtree-syntax-highlight"]={},

}


