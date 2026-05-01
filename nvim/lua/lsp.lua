vim.lsp.enable({
    "lua_ls",
    "rust-analyzer",
    "clangd",
})

vim.lsp.handlers["client/registerCapability"] = function() end
vim.diagnostic.config({ virtual_text = true })
