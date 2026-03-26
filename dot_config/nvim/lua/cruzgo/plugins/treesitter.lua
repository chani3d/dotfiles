local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

treesitter.setup({
  highlight = {
    enable = true
  },
  indent = { 
    enable = true 
  },
  autotag = { 
    enable = true
  },
  ensure_installed = {
    "javascript",
    "typescript",
    "html",
    "css",
    "markdown",
    "bash",
    "lua",
    "vim",
    "gitignore",
    "scala",
    "typst",
    "python",
    "hyprlang",
  },
  vim.filetype.add({
    pattern = { 
      [".*/hypr/.*%.conf"] = "hyprlang" 
    },
  }),
  auto_install = true,
})
