vim.notify('lazygit-float.lua is loading', vim.log.levels.WARN)
vim.keymap.set('n', '<leader>gg', function()
  local width = math.floor(vim.o.columns * 0.9)
  local height = math.floor(vim.o.lines * 0.9)
  local buf = vim.api.nvim_create_buf(false, true)
  local win = vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = width,
    height = height,
    row = math.floor((vim.o.lines - height) / 2),
    col = math.floor((vim.o.columns - width) / 2),
    style = 'minimal',
    border = 'rounded',
  })

  vim.fn.termopen('lazygit', {
    on_exit = function()
      if vim.api.nvim_win_is_valid(win) then
        vim.api.nvim_win_close(win, true)
      end
    end,
  })

  vim.cmd 'startinsert'

  vim.keymap.set('t', '<esc>', function()
    vim.api.nvim_win_close(win, true)
  end, { buffer = buf })
end, { desc = 'Open LazyGit (floating)' })
