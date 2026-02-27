return {
  "navarasu/onedark.nvim",
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("onedark").setup({
      -- Main options --
      style = "deep", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
      transparent = false, -- Show/hide background
      term_colors = false, -- Change terminal color as per the selected theme style
      ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
      cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

      -- toggle theme style ---
      -- toggle_style_key = "<leader>ts", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
      -- toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between

      -- Change code style ---
      -- Options are italic, bold, underline, none
      -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
      code_style = {
        comments = "bold",
        keywords = "bold",
        functions = "none",
        strings = "none",
        variables = "none",
      },

      -- Lualine options --
      lualine = {
        transparent = false, -- lualine center bar transparency
      },

      -- Custom Highlights --
      colors = {}, -- Override default colors
      highlights = {
        -- 1. The main area with text
        Normal = { bg = "#000000" },
        -- 2. The area *below* the last line of the file (The ~ characters)
        EndOfBuffer = { bg = "#000000" },
        -- 3. The column on the left (Line numbers)
        LineNr = { bg = "#000000" },
        -- 4. The column for git signs and diagnostics
        SignColumn = { bg = "#000000" },

        -- Floating Windows (Deep Charcoal to make them "pop")
        -- Try #161616 or #1e1e1e
        NormalFloat = { bg = "#000000" },

        -- The Border of the floating window
        -- Making this a bright color like the One Dark "Blue" makes it pop even more
        FloatBorder = { fg = "#61afef", bg = "#000000" },
      }, -- Override highlight groups

      -- Plugins Config --
      diagnostics = {
        darker = false, -- darker colors for diagnostic
        undercurl = false, -- use undercurl instead of underline for diagnostics
        background = false, -- use background color for virtual text
      },
    })
    -- Enable theme
    require("onedark").load()
  end,
}
