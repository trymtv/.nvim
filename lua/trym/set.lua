vim.opstop = 4
vim.opt.number = true

-- Set autotoggle of number and relative number to focuse and insert
local numberToggleGroup = vim.api.nvim_create_augroup("NumberToggle", {clear = true})

vim.api.nvim_create_autocmd(
	{"BufEnter", "FocusGained", "InsertLeave", "WinEnter"},
	{pattern = "*", command = "if &nu && mode() != \"i\" | set rnu   | endif", group = numberToggleGroup
}
	)
vim.api.nvim_create_autocmd(
    {"BufLeave", "FocusLost", "InsertEnter", "WinLeave"},
    {pattern = "*", command = "if &nu && mode() != \"i\" | set nornu   | endif", group = numberToggleGroup}
)

vim.opt.nu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
