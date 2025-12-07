return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vue",
        "html",
        "css",
        "javascript",
        "typescript",
        "html",
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
      },
    },
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup({
        filetypes = {
          "html",
          "javascript",
          "typescript",
          "javascriptreact",
          "typescriptreact",
          "vue",
          "nuxt",
        },
      })
    end,
  },
}
