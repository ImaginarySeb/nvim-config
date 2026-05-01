local keymap = vim.keymap
vim.g.mapleader = " "
local opts = { noremap = true, silent = true }


-- Base --
keymap.set("n", "<leader>ve", ":edit ~/.config/nvim/init.lua<cr>", { silent = true })
keymap.set("n", "<leader>vr", ":source ~/.config/nvim/init.lua<cr>", { silent = true })
keymap.set("n", "<leader>vc", ":so%<cr>", { silent = true })
keymap.set("n", "<Esc>", ":noh<cr>", opts)

-- opens the current file in the default program
keymap.set("n", "<leader>x", ":terminal start %<cr>", { silent = true })


-- Navigation --
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)


-- Vim Fugitive --
keymap.set("n", "<leader>gs", '<cmd>Git<CR>', opts)
keymap.set("n", "<leader>gp", '<cmd>Git push<CR>', opts)



-- Window Management --
keymap.set("n", "<leader>sv", ":vsplit.<cr>", opts)
keymap.set("n", "<leader>sh", ":split.<cr>", opts)
keymap.set("n", "<leader>sd", ":vsplit<cr>", opts)


-- Floaterm --
keymap.set("n", "<leader>fs", ":FloatermNew<cr>", { silent = true})
keymap.set("n", "<leader>ft", ":FloatermToggle<cr>", { silent = true})
keymap.set("n", "<leader>fn", ":FloatermNext<cr>", { silent = true})
keymap.set("n", "<leader>fb", ":FloatermPrev<cr>", { silent = true})
keymap.set("n", "<leader>fk", ":FloatermKill<cr>", { silent = true})
keymap.set("n", "<leader>fe", ":FloatermNew ", { silent = true})


-- Oil --
keymap.set("n", "<leader>o", ":Oil<cr>", { silent = true })
keymap.set("n", "<leader>O", ":Oil ", { silent = true })


keymap.set("n", "<F5>", vim.cmd.UndotreeToggle)

-- MiniHarp --
-- keymap.set('n', '<leader>m', require('miniharp').toggle_file, { desc = 'miniharp: toggle file mark' })
-- keymap.set('n', '<C-n>',     require('miniharp').next,        { desc = 'miniharp: next file mark' })
-- keymap.set('n', '<C-p>',     require('miniharp').prev,        { desc = 'miniharp: prev file mark' })
-- keymap.set('n', '<leader>l', require('miniharp').show_list,   { desc = 'miniharp: list marks' })
--

-- Toggler --
-- keymap.set({ 'n', 'v' }, '<leader>t', require('nvim-toggler').toggle)



-- FzfLua --
keymap.set("n", "<c-j>", ":FzfLua<cr>", opts)
keymap.set("n", "<a-f>", ":FzfLua files<cr>", opts)


-- rust --
keymap.set("n", "<F2>", ":FloatermNew --autoclose=0 cargo run<cr>", { silent = true, noremap = true})
keymap.set("n", "<leader>rc", ":FloatermNew --autoclose=0 cargo check<cr>", { silent = true, noremap = true})

-- C --
-- keymap.set("n", "<leader>c", function ()
--     local file = vim.fn.expand("%")
--     local output = vim.fn.expand("%:r")
--     local cmd = "clang " .. file .. " -o " .. output .. " && ./" ..output
--     vim.cmd("FloatermNew --autoclose=0 " .. cmd)
-- end)
-- keymap.set("n", "<leader>c", function ()
--     vim.cmd("write")
--
--     local file = vim.fn.expand("%:p")
--     local cwd = vim.fn.getcwd()
--     local output = vim.fn.fnamemodify(cwd, ":t")
--
--     local cmd = "clang " .. file .. " -o " .. output .. " && ./" ..output
--
--     vim.cmd("FloatermNew --autoclose=0 " .. cmd)
-- end)
keymap.set("n", "<leader>c", function ()
    local file = vim.fn.expand("%")
    vim.cmd("FloatermNew --autoclose=0 clang " .. file .. " && ./a.out")
end, opts)
