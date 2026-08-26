vim.opt.conceallevel = 0
vim.opt.wrap = true
vim.g.lazyvim_ts_lsp = "vtsls"
vim.opt.clipboard = "unnamedplus"

if vim.fn.has("wsl") == 1 and vim.loop.fs_stat("/proc/sys/fs/binfmt_misc/WSLInterop") == nil then
  -- WSL interop broken: Windows .exe providers (clip.exe/win32yank.exe) fail.
  -- Force OSC52 so yanks still reach Windows Terminal clipboard via tmux.
  vim.g.clipboard = "osc52"
end