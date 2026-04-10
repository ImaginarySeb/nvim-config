vim.pack.add({
    { src = 'https://github.com/nguyenvukhang/nvim-toggler' }
})
require('nvim-toggler').setup({
    inverses = {
        ['1'] = '0',
        ['true'] = 'false',
        ['True'] = 'False',
        ['on'] = 'off',
    },
    remove_default_inverses = true,
})
