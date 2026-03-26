local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- recommended settings from nvim-tree doc
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

--vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]] -- arrows color

nvimtree.setup({
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "->",
          arrow_open = "o",
        },
      },
    },
  },
})
