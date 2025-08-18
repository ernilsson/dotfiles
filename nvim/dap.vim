nnoremap <leader>db <cmd>DapToggleBreakpoint<cr>
nnoremap <leader>dn <cmd>DapNew<cr>
nnoremap <leader>dc <cmd>DapContinue<cr>
nnoremap <leader>dso <cmd>DapStepOver<cr>
nnoremap <leader>dsi <cmd>DapStepInto<cr>

lua require("dapui").setup()
nnoremap <leader>dui <cmd>lua require("dapui").toggle()<cr>
nnoremap <leader>de <cmd>lua require("dapui").eval()<cr>
