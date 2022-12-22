local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then
  return
end

ts.setup {
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'tsx',
    'lua',
    'json',
    'css'
  },
  autotag = {
    enable = true,
  }
}
