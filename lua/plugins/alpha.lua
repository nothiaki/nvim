return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    --dashboard.section.header.val = {
      --[[                                   ]]
      --[[                                   ]]
      --[[                                   ]]
      --[[   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ]]
      --[[    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ]]
      --[[          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ]]
      --[[           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ]]
      --[[          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ]]
      --[[   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ]]
      --[[  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ]]
      --[[ ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ]]
      --[[ ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ]]
      --[[      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ]]
      --[[       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ]]
      --[[                                   ]]
      --[[           [ @nothiaki ]           ]]
    --}

    dashboard.section.header.val = {
      [[                                ]],
      [[                                ]],
      [[                                ]],
      [[        ▀████▀▄▄              ▄█]],
      [[          █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█]],
      [[  ▄        █          ▀▀▀▀▄  ▄▀ ]],
      [[ ▄▀ ▀▄      ▀▄              ▀▄▀ ]],
      [[▄▀    █     █▀   ▄█▀▄      ▄█   ]],
      [[▀▄     ▀▄  █     ▀██▀     ██▄█  ]],
      [[ ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █ ]],
      [[  █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀ ]],
      [[ █   █  █      ▄▄           ▄▀  ]],
      [[                                ]],
      [[          [ nothiaki ]          ]],
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", ":ene <BAR> startinsert <cr>"),
      dashboard.button("SPC f", "  Find file", ":Telescope find_files<cr>"),
      dashboard.button("SPC hf", "  Find harpoon", "<cmd>lua require('telescope').extensions.harpoon.marks{}<cr>"),
      dashboard.button("q", "  Exit", ":qa<cr>")
    },

    alpha.setup(dashboard.opts)
  end,
}
