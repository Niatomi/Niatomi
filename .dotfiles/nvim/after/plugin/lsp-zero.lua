require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "volar" },
})
local lspconfig = require("lspconfig")

require("mason-lspconfig").setup_handlers({
	function(server_name)
		local server_config = {}
		if server_name == "volar" then
			server_config.filetypes = { "vue", "typescript", "javascript" }
		end
		lspconfig[server_name].setup(server_config)
	end,
})

require("conform").setup({
	formatters_by_ft = {
		javascript = { "prettier" },
		json = { "prettier" },
        c = { "clang-format" },
		typescript = { "prettier" },
		javascriptreact = { "prettier" },
		typescriptreact = { "prettier" },
		svelte = { "prettier" },
		css = { "prettier" },
		html = { "prettier" },
		json = { "prettier" },
		yaml = { "prettier" },
		markdown = { "prettier" },
		vue = { "prettier" },
		lua = { "stylua" },
		rust = { "rustfmt", lsp_format = "fallback" },
	},
	format_on_save = {
		-- I recommend these options. See :help conform.format for details.
		lsp_format = "fallback",
		timeout_ms = 500,
	},
})

local cmp = require("cmp")
cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
	},
	snippet = {
		expand = function(args)
			vim.snippet.expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<CR>"] = cmp.mapping.confirm({ select = false }),
		["<C-y>"] = cmp.mapping.confirm({ select = true }),
		["<M-k>"] = cmp.mapping.select_prev_item(),
		["<M-j>"] = cmp.mapping.select_next_item(),
	}),
})

vim.keymap.set("n", "<leader>do", function()
	vim.diagnostic.open_float()
end, opts)
vim.keymap.set("n", "<F2>", function()
	vim.lsp.buf.rename()
end, opts)
vim.keymap.set("n", "gd", function()
	vim.lsp.buf.definition()
end, opts)
vim.keymap.set("n", "K", function()
	vim.lsp.buf.hover()
end, opts)
vim.keymap.set("n", "<leader>vws", function()
	vim.lsp.buf.workspace_symbol()
end, opts)
vim.keymap.set("n", "<leader>vd", function()
	vim.diagnostic.open_float()
end, opts)
vim.keymap.set("n", "[d", function()
	vim.diagnostic.goto_next()
end, opts)
vim.keymap.set("n", "]d", function()
	vim.diagnostic.goto_prev()
end, opts)
vim.keymap.set("n", "<leader>vca", function()
	vim.lsp.buf.code_action()
end, opts)
vim.keymap.set("n", "<leader>vrr", function()
	vim.lsp.buf.references()
end, opts)
vim.keymap.set("n", "<leader>vrn", function()
	vim.lsp.buf.rename()
end, opts)
vim.keymap.set("i", "<C-h>", function()
	vim.lsp.buf.signature_help()
end, opts)
