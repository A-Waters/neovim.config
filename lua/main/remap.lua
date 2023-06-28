vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)



-- move items when highlighted
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- move line below to end of line
vim.keymap.set("n", "J", "mzJ`z")

-- move screen + keep cursor in midddle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- search tearms center screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- paste without copying
vim.keymap.set("x", "<leader>p", [["_dP]])

-- copy and paste using system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])


-- delete to void register 
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- replace word being highlighted 
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- chmod file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- source file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
