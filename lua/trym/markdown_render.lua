vim.api.nvim_create_user_command(
'MDRender',
function ()
    local file_path = vim.fn.expand('%')
    local file_name = string.match(file_path, '(.+)%.(.+)')
    os.execute(string.format('pandoc --mathjax= --template=~/.pandoc/obsidian_template.html --standalone %s.md -o %s.html > /dev/null 2>&1', file_name, file_name))
    print(string.format("Rendered %s.md to %s.html", file_name, file_name))
end,
{}
)
