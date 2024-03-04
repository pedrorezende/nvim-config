local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>/", Util.telescope("files"), desc = "Find Files (root dir)" },
    { "<leader><space>", Util.telescope("live_grep"), desc = "Grep (root dir)" },
  },
}
