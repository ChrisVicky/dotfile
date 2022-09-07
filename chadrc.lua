-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

local userPlugins = require("custom.plugins")

local pluginConfigs = require("custom.plugins.configs")

M.plugins = {
  override = {
    ["nvim-treesitter/nvim-treesitter"] = pluginConfigs.treesitter,
    ["kyazdani42/nvim-tree.lua"] = pluginConfigs.nvimtree,
    ["iamcco/markdown-preview.nvim"] = pluginConfigs.markdownPreview,
    
  },
  user = userPlugins,
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
  },
}

M.ui = {
  theme = "catppuccin",
}


M.mappings = require "custom.mappings"
return M
