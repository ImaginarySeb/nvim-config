vim.lsp.enable({
    "lua_ls",
    "rust-analyzer",
    "clangd",
    -- "jdtls",
    -- "java_language_server",
})

vim.lsp.handlers["client/registerCapability"] = function() end
vim.diagnostic.config({ virtual_text = true })
