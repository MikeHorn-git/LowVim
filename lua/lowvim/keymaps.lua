local map = vim.keymap.set

vim.g.mapleader = " " -- <Space> leader key

-- Normal mode
--- General
map("n", "<leader>cl", vim.cmd.noh, { desc = "Clear highlights" })
map("n", "<leader>f", vim.lsp.buf.format, { desc = "Format buffer lsp" })

--- Motions
map("n", "<leader>n", vim.cmd.Ex, { desc = "File navigation" })
map("n", "<C-h>", "<C-w>h", { desc = "Switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch window up" })

--- Plugins
map("n", "<leader>l", vim.cmd.Lazy, { desc = "Lazy" })
map("n", "<leader>m", vim.cmd.Mason, { desc = "Mason" })
map("n", "<leader>tu", vim.cmd.TSUpdate, { desc = "Treesitter update" })
map("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Undotree" })
map("n", "<leader>w", vim.cmd.WhichKey, { desc = "WhichKey" })
