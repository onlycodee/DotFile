return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { 'lua', 'c_sharp', 'cpp' }, -- Install Lua parser
          highlight = { enable = true }, -- Enable syntax highlighting
          incremental_selection = { enable = true },
      }
    end,
}
