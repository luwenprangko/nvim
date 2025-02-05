return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true,  -- Make sure all items are visible
          hide_dotfiles = false, -- Don't hide dotfiles
        },
        hijack_netrw = true,  -- Optional, if you want Neo-tree to hijack netrw
      },
    })
  end
}

