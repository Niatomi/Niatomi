local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '<leader>tpn', api.tree.change_root_to_parent, opts('Up'))
    vim.keymap.set('n', '<leader>tcn', api.tree.change_root_to_node, opts('CD'))
    vim.keymap.set("n", "<leader>tcol", api.tree.collapse_all, opts("Collapse"))
    vim.keymap.set("n", "<leader>sv", api.node.open.vertical, opts("Open: Vertical Split"))
    vim.keymap.set('n', '<leader>thl',     api.tree.toggle_help,                  opts('Help'))
end

require("nvim-tree").setup({
    on_attach = my_on_attach,
})
