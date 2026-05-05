return {

  -- If I ever publish this as a stand-alone plugin, replace the `name` and `dir'
  -- attributes with the github repo name.
  name = "motion-alert",
  dir = vim.fn.stdpath("config"),

  config = function()
    local threshold = 8

    local state = {
      current_key = nil,
      count = 0,
    }

    local motion_keys = { h = true, j = true, k = true, l = true }

    local function reset()
      state.current_key = nil
      state.count = 0
    end

    local flash_active = false

    local function flash()
      if flash_active then return end
      flash_active = true

      local saved = vim.api.nvim_get_hl(0, { name = "Normal" })
      vim.api.nvim_set_hl(0, "Normal", vim.tbl_extend("force", saved, { bg = 0x3a0000 }))
      vim.cmd("redraw")

      vim.defer_fn(function()
        vim.api.nvim_set_hl(0, "Normal", saved)
        vim.cmd("redraw")
        flash_active = false
      end, 100)
    end

    local function handle_motion(key)
      if state.current_key == key then
        state.count = state.count + 1
      else
        state.current_key = key
        state.count = 1
      end

      if state.count > threshold then
        flash()
      end
    end

    vim.on_key(function(key)
      if not motion_keys[key] then
        reset()
      end
    end)

    for _, key in ipairs({ "h", "j", "k", "l" }) do
      vim.keymap.set("n", key, function()
        handle_motion(key)
        return key
      end, { expr = true, noremap = true, silent = true })
    end
  end,
}
