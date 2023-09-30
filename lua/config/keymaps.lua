-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- local Util = require("lazyvim.util")
-- local jsmap = require("utils").jsmap
-- local insert_text_at_cursor = require("utils").insert_text_at_cursor
--
-- local function map(mode, lhs, rhs, opts)
--   local keys = require("lazy.core.handler").handlers.keys
--   ---@cast keys LazyKeysHandler
--   -- do not create the keymap if a lazy keys handler exists
--   if not keys.active[keys.parse({ lhs, mode = mode }).id] then
--     opts = opts or {}
--     opts.silent = opts.silent ~= false
--     vim.keymap.set(mode, lhs, rhs, opts)
--   end
-- end
--
-- -- stuff for R
-- jsmap("i", "<C-ä>", "%>%", { desc = "Insert pipe %>%" })
-- jsmap("n", "<C-n", "v", { desc = "Visual mode" })

vim.keymap.set("i", "jk", "<Esc>", { silent = true, desc = "jk to escape" })
vim.keymap.set("t", "jk", "<C-[>", { silent = true, desc = "jk to escape" })

vim.keymap.set("n", "<leader>Gv", "<cmd>VimBeGood<CR>", { silent = true, desc = "Vim keys training games" })
vim.keymap.set("n", "<leader>Gt", "<cmd>Tetris<CR>", { silent = true, desc = "Tetris" })
vim.keymap.set("n", "<leader>Gs", "<cmd>ShenzhenSolitaireNewGame<CR>", { silent = true, desc = "Shenzhen Solitaire" })
vim.keymap.set("n", "<leader>Gw", "<cmd>Nvimesweeper<CR>", { silent = true, desc = "Minesweeper" })
vim.keymap.set("n", "<leader>Gk", "<cmd>Snake<CR>", { silent = true, desc = "The Snake" })
vim.keymap.set("n", "<leader>Gi", "<cmd>KillKillKill<CR>", { silent = true, desc = "Killer sheep" })
