return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = {
        char = "│",
      },
      scope = {
        enabled = true,
        show_start = true,
        show_end = true,
        highlight = { "Function", "Label" }, -- Scope highlight groups
      },
    },
    config = function(_, opts)
      require("ibl").setup(opts)

      -- Add these global settings here
      vim.g.indent_blankline_show_current_context = true
      vim.g.indent_blankline_context_patterns = {
        'class', 'function', 'method', '^if', '^while', '^for',
        '^object', '^table', 'block', 'arguments'
      }
    end,
  },
}

