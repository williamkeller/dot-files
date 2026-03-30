return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},

  keys = {
    { "<leader>f", function() require('fzf-lua').files() end, desc = "Find Files" },
    { "<leader>b", function() require('fzf-lua').buffers() end, desc = "Find in Buffers" },
    { "<leader>s", function() require('fzf-lua').live_grep() end, desc = "Life Grep" },
    -- { "<leader>s", "<cmd>fzf live_grep<cr>",  desc = "Live Grep" },
    -- { "<leader>b", "<cmd>fzf buffers<cr>",    desc = "Find Buffers" },
    -- { "<leader>h", "<cmd>fzf help_tags<cr>",  desc = "Help Tags" },
  }
}
