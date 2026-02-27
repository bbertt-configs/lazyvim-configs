return {
  -- We return an empty table or a "fake" spec so LazyVim is happy
  -- and just execute our logic inside the file
  {
    "LazyVim/LazyVim",
    opts = function()
      if vim.g.neovide then
        -- 2. Cursor "VFX" (Choose: "railgun", "torpedo", "pixiedust", "sonicboom", "ripple")
        vim.g.neovide_cursor_vfx_mode = "pixiedust"

        vim.g.neovide_opacity = 0.75
        vim.g.neovide_floating_blur_amount_x = 2.0
        vim.g.neovide_floating_blur_amount_y = 2.0

        -- Fix Paste for Windows/Linux
        vim.keymap.set("n", "<C-S-v>", '"+P') -- Paste in Normal mode
        vim.keymap.set("v", "<C-S-v>", '"+P') -- Paste in Visual mode
        vim.keymap.set("c", "<C-S-v>", "<C-R>+") -- Paste in Command mode
        vim.keymap.set("i", "<C-S-v>", "<C-R>+") -- Paste in Insert mode (Commit messages!)

        -- If you are on macOS, you'd use <D-v> (Command+V)
        vim.keymap.set("i", "<D-v>", "<C-R>+")

        -- This specific mapping works inside terminal buffers (like Lazygit)
        -- <C-\><C-n> puts Neovim into normal mode briefly
        -- "+p pastes from the system clipboard
        -- i puts you back into terminal input mode
        vim.keymap.set("t", "<C-S-v>", [[<C-\><C-n>"+pi]], { desc = "Paste in terminal" })

        -- Also, for standard Ctrl+v if you prefer:
        vim.keymap.set("t", "<C-v>", [[<C-\><C-n>"+pi]], { desc = "Paste in terminal" })
      end
    end,
  },
}
