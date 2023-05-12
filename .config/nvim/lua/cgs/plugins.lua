return require('packer').startup(function(use)
  -- package manager
  use 'wbthomason/packer.nvim'

  use { 'folke/trouble.nvim',
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        signs= {
          error = "✘",
          warning = "",
          info = "",
          hiint = "",
        },
      }
    end
  }

  use { 'kyazdani42/nvim-web-devicons',
    config = function()
      require'nvim-web-devicons'.setup {
        color_icons = true;
        default = true;
      }
    end
  }

end)
