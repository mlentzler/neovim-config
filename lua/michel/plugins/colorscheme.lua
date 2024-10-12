return {
  "catppuccin/nvim", 
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavor = "frappe"
    })

    integrations = {
      nvimtree = true,
      require('lualine').setup {
        options = {
            theme = "catppuccin"
            -- ... the rest of your lualine config
        },
      },
    }

    

    vim.cmd("colorscheme catppuccin")
  end
}
