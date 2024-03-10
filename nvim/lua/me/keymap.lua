local builtin = require('telescope.builtin')

local keymap = function(tbl)
	local opts = { noremap = true, silent = true }
	local mode = tbl['mode']
	tbl['mode'] = nil
	local bufnr = tbl['bufnr']
	tbl['bufnr'] = nil

	for k, v in pairs(tbl) do
		if tonumber(k) == nil then
			opts[k] = v
		end
	end

	if bufnr ~= nil then
		vim.api.nvim_buf_set_keymap(bufnr, mode, tbl[1], tbl[2], opts)
	else
		vim.api.nvim_set_keymap(mode, tbl[1], tbl[2], opts)
	end
end

local nmap = function(tbl)
	tbl['mode'] = 'n'
	keymap(tbl)
end

local imap = function(tbl)
	tbl['mode'] = 'i'
	keymap(tbl)
end


local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then return end
treesitter.setup { ensure_installed = "all", highlight = { enable = true } }
local opts = { noremap = true, silent = true }
-- keymaps
vim.keymap.set("n", "<leader>p", "<cmd>Glow<cr>")
nmap { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find sorting_strategy=ascending prompt_position=top<CR>" }
nmap { "<leader>sp", "<cmd>Telescope live_grep<CR>" }
nmap { "<leader>cx", "<cmd>Telescope diagnostics<cr>" }
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set("n", "gD", "<CMD>Glance definitions<CR>", opts)
vim.keymap.set("n", "gR", "<CMD>Glance references<CR>", opts)
vim.keymap.set("n", "gY", "<CMD>Glance type_definitions<CR>", opts)
vim.keymap.set("n", "gM", "<CMD>Glance implementations<CR>", opts)
-- navigation	
nmap { "L", "<cmd>bnext<cr>" }
nmap { "H", "<cmd>bprevious<cr>" }
nmap { "F", "<cmd>HopPattern<cr>" }
