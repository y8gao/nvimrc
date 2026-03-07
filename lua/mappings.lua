require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- LSP Navigation
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gr", vim.lsp.buf.references, { desc = "Find references" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
map("n", "K", vim.lsp.buf.hover, { desc = "Show hover info" })

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help tags" })
map("n", "<leader>fw", "<cmd>Telescope grep_string<CR>", { desc = "Grep word under cursor" })

-- Neo-tree
map("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" })
map("n", "<C-n>", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" })

-- Theme switcher
map("n", "<leader>th", "<cmd>Themery<CR>", { desc = "Open theme switcher" })

-- Bufferline navigation
map("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
map("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
map("n", "<leader>bc", "<cmd>bdelete<CR>", { desc = "Close buffer" })
map("n", "<leader>bl", "<cmd>BufferLineCloseLeft<CR>", { desc = "Close all left buffers" })
map("n", "<leader>br", "<cmd>BufferLineCloseRight<CR>", { desc = "Close all right buffers" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
