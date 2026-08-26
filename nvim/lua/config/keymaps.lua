local keymap = vim.keymap
local opts = { noremap = true, silent = true }

local function paste_plus_into_terminal()
  local text = vim.fn.getreg("+")
  local chan = vim.b.terminal_job_id
  if text ~= "" and chan and chan > 0 then
    vim.api.nvim_chan_send(chan, text)
  end
end

-- Window splits
keymap.set("n", "<leader>sh", ":split<CR>", opts)
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts)

-- Windows split & opening new terminal session
keymap.set("n", "<leader>tv", ":vsplit | terminal<CR>", opts)
keymap.set("n", "<leader>th", ":split | terminal<CR>", opts)
keymap.set("t", "<Esc>", [[<C-\><C-n>]], opts)
keymap.set("t", "<C-S-v>", paste_plus_into_terminal, opts)
keymap.set("v", "<C-c>", '"+y', opts)

-- Move between open window splits
keymap.set("n", "sh", "<C-w>h", opts)
keymap.set("n", "sk", "<C-w>k", opts)
keymap.set("n", "sj", "<C-w>j", opts)
keymap.set("n", "sl", "<C-w>l", opts)

-- Go back to previous buffer
keymap.set("n", "gb", ":bprev<CR>", opts)

-- Exit "insert" mode with "jj"
keymap.set("i", "jj", "<ESC>", opts)

-- Use Neotree as default
keymap.set("n", "<leader>e", ":Neotree toggle<CR>", opts)

keymap.set(
  "n",
  "<leader>z",
  "<cmd>lua require'centerpad'.toggle{ leftpad = 20, rightpad = 20 }<cr>",
  { silent = true, noremap = true }
)

keymap.set("n", "C-d", "C-dzz", opts)
keymap.set("n", "C-u", "C-uzz", opts)
