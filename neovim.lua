local function has_adna_in_user_plugins()
    local plugins_dir = vim.fn.expand("~/.config/nvim/lua/plugins")
    if vim.fn.isdirectory(plugins_dir) ~= 1 then
        return false
    end
    local plugin_files = vim.fn.glob(plugins_dir .. "/**/*.lua", true, true)
    for _, file in ipairs(plugin_files) do
        local ok, lines = pcall(vim.fn.readfile, file)
        if ok then
            for _, line in ipairs(lines) do
                if line:find("fross100/adna.nvim", 1, true) then
                    return true
                end
            end
        end
    end
    return false
end

if has_adna_in_user_plugins() then
  return {
    {
      "fross100/adna.nvim",
      lazy = false,
      priority = 1000,
      config = function()
        vim.cmd("colorscheme adna")
      end,
    },
  }
end

return {
  {
    "fross100/adna.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme adna")
    end,
  },
}
