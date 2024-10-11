-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
     

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" }) -- clear search highlights

keymap.set('n', 'U', '<cmd>redo<CR>', { desc = 'Redo last change' }) -- Redo changes like an undo with U

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sd", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>td", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Map leader + 1-9 to switch to tab 1-9
for i = 1, 9 do
  vim.keymap.set(
    'n',
    '<leader>' .. i .. '',
    ':tabn ' .. i .. '<CR>',
    { silent = true, desc = 'Move to tab ' .. i .. '' }
  )
end


