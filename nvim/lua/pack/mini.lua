vim.pack.add({
    { src = 'https://github.com/nvim-mini/mini.icons' }
})
vim.pack.add({
    { src = 'https://github.com/nvim-mini/mini.comment' }
})
vim.pack.add({
    { src = 'https://github.com/nvim-mini/mini.notify' }
})
vim.pack.add({
    { src = 'https://github.com/nvim-mini/mini.surround' }
})
vim.pack.add({
    { src = 'https://github.com/nvim-mini/mini.align' }
})
require('mini.icons').setup()
require('mini.comment').setup()
require('mini.align').setup()
require('mini.surround').setup()
require('mini.notify').setup()
