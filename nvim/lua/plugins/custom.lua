return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "prettier",
        "eslint_d",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "javascript", "typescript", "tsx", "json", "html", "css", "lua",
      },
    },
  },
  { "windwp/nvim-ts-autotag", opts = {} },
  { "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },
}
