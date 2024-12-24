return {
  'windwp/nvim-ts-autotag',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('nvim-ts-autotag').setup({
      opts = {
        enable_close = true,            -- Tags automatisch schließen
        enable_rename = true,           -- Tags beim Umbenennen synchronisieren
        enable_close_on_slash = false   -- Kein automatisches Schließen bei </
      },
    })
  end
}

