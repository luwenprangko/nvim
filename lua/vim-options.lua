vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.o.number = true
-- vim.o.relativenumber = true


-- Enable swap files for auto-recovery
vim.opt.swapfile = true
vim.opt.directory = vim.fn.stdpath("data") .. "/swap//"  -- Store swap files in ~/.local/share/nvim/swap/

-- Enable backup files for safety
vim.opt.backup = true
vim.opt.writebackup = true
vim.opt.backupdir = vim.fn.stdpath("data") .. "/backup//"  -- Store backups separately

-- Auto-recover files on startup if swap file exists
vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    local filename = vim.fn.expand("%")
    local swapfile = filename .. ".swp"
    if filename ~= "" and vim.fn.filereadable(swapfile) == 1 then
      vim.cmd("silent! recover")  -- Automatically recover the file without prompts
      print("Auto-recovered from swap file!")
    end
  end,
})

