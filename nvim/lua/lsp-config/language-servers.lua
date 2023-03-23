require("nvim-lsp-installer").setup {}


local lspconfig = require("lspconfig")                                                                                                                                                                                                                                    
local function on_attach(client, bufnr)                                                                                            
    -- set up buffer keymaps, etc.                                                                                                 
end                                                                                                                                
                                                                                                                                       
lspconfig.sumneko_lua.setup { on_attach = on_attach }                                                                              
lspconfig.pyright.setup { on_attach = on_attach }
lspconfig.quick_lint_js.setup { on_attach = on_attach }
lspconfig.emmet_ls.setup { on_attach = on_attach }
