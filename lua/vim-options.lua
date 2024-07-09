vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set nu")
vim.cmd("set linebreak")
vim.cmd("set breakindent")


vim.keymap.set("n", "<C-b>", "<cmd>wall<cr><esc> <bar> :below split term:// g++ % -o out && ./out < in.txt <Return> <bar> :wincmd 4- <Return> <bar> :1 <Return>")
vim.api.nvim_create_user_command("CP", "cd /home/nafis277/Desktop/Problem Solving <bar> edit code.cpp <bar> :vsplit in.txt <bar> :wincmd L <bar> :wincmd 40< <bar> :wincmd h",  {})

vim.cmd[[
" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]]

