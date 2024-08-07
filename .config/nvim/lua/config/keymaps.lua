local keymap = vim.keymap
local opts = { silent = true, noremap = true }

-- Select all.
keymap.set("n", "<C-a>", "<S-g>Vgg")

-- Tabs.
-- keymap.set("n", "te", ":tabedit<Return>", opts)
-- keymap.set("n", "tc", ":tabclose<Return>", opts)
-- keymap.set("n", "<tab>", ":tabnext<Return>", opts)
-- keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Buffers.
keymap.set("n", "<tab>", ":bn<Return>", opts)
keymap.set("n", "<s-tab>", ":bp<Return>", opts)
keymap.set("n", "Q", ":Bdelete<Return>", opts)

-- Windows.
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- Splits.
keymap.set("n", "sh", ":split<Return>")
keymap.set("n", "sv", ":vsplit<Return>")
keymap.set("n", "sq", "<C-w>q")
keymap.set("n", "sw", "<C-w>w")
