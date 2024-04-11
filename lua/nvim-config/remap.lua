-----------------------------------
-- vim motion remappings
-----------------------------------

-- file directory view
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- in visual mode, select text and then hold Shift+J to move text up
vim.keymap.set("v", "J", ":m '<-2<CR>gv=gv")
-- in visual mode, select text and then hold Shift+K to move text down
vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv")

-- navigate between symbols - jump out of definition (pop tag from stack)
vim.keymap.set("n", "<C-[>", "<C-RightMouse>")
-- navigate between symbols - jump to definition (push tag to stack)
vim.keymap.set("n", "<C-]>", "<C-]>")

vim.keymap.set("n", "Y", "yg$")
vim.keymap.set("n", "J", "mzJ`z")

-- half page navigation - keep cursor at col 1
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- up
vim.keymap.set("n", "<C-e>", "<C-d>zz") -- down

-- when searching terms keep cursor at col 1
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- paste buffer over highlighted text without changing paste buffer to deleted text
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- never press capital Q
vim.keymap.set("n", "Q", "<nop>")


vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.but.format()
end)

-- quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- regex replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make a file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- convenience - source a file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- navigate to next pane
vim.keymap.set("n", "<leader>w<Right>", "<C-w>w")
-- navigate to previous pane
vim.keymap.set("n", "<leader>w<Left>", "<C-w>W")

-- navigate to bottom right pane
vim.keymap.set("n", "<leader>w<Down>", "<C-w>b")
-- navigate to top left pane
vim.keymap.set("n", "<leader>w<Up>", "<C-w>t")

-- create a new horizontal pane
vim.keymap.set("n", "<leader>wn", vim.cmd.vnew)

-----------------------------------
-- plugin-specific mappings
-----------------------------------

-- cellular-automaton.nvim
-- funzies
vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")

-- vim-fugitive.nvim
-- new horizontal split for Git change tree
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- glow.nvim
-- render current buffer as markdown in new floating transparent pane
vim.keymap.set("n", "<leader>mg", vim.cmd.Glow)

-- watch.nvim
-- open a new vertical pane and populate the :WatchStart command
vim.keymap.set("n", "<leader>ws", [[:vnew<CR>:WatchStart ]])

-- undotree.nvim
-- open undo tree terminal ui
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
