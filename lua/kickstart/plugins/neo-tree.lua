-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\rs', ':Neotree reveal<CR>', desc = 'NeoTree [Re]veal Tree', silent = true },
    { '\\bs', ':Neotree buffers reveal<CR>', desc = 'NeoTree [B]ffers [S]how', silent = true },
    { '\\gs', ':Neotree git_status reveal<CR>', desc = 'Neotree [G]it [S]tatus', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        position = 'right',
        width = 75,
        mappings = {
          ['q'] = 'close_window',
        },
      },
    },
    buffers = {
      window = {
        position = 'right',
        width = 75,
        mappings = {
          ['q'] = 'close_window',
        },
      },
    },
    git_status = {
      window = {
        position = 'float',
        mappings = {
          ['q'] = 'close_window',
        },
      },
    },
  },
}
