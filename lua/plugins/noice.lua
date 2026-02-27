return {
  -- 1. Configure Noice (Your current setup + extras)
  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        hover = {
          silent = true,
        },
      },
      presets = {
        lsp_doc_border = true, -- Adds border to Hover/Signature
        command_palette = true, -- Adds border to the cmdline
      },
    },
  },

  -- 2. Configure Diagnostics (Floating window borders)
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Ensure the 'diagnostics' table exists
      opts.diagnostics = opts.diagnostics or {}
      opts.diagnostics.float = opts.diagnostics.float or {}

      -- Add the border to the diagnostic float
      opts.diagnostics.float.border = "rounded"
    end,
  },
}
