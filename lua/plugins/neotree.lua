return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "float",
      mappings = {
        ["<space>"] = "none",
        ["Y"] = function(state)
          local node = state.tree:get_node()
          local path = node:get_id()
          vim.fn.setreg("+", path, "c")
        end,
      },
    },
    filesystem = {
      filtered_items = {
        visible = true, -- when true, they will just be displayed differently than normal items
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_hidden = false, -- only works on Windows for hidden files/directories
        never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
          ".DS_Store",
          "thumbs.db",
          ".git",
          "node_modules",
        },
      },
    },
  },
}
