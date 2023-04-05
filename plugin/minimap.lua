local map = require('mini.map')

map.setup({
  -- Highlight integrations (none by default)
  integrations = {
    map.gen_integration.builtin_search({search = 'Operator'}),
    map.gen_integration.gitsigns(),
    map.gen_integration.diagnostic(),
  },

  -- Symbols used to display data
  symbols = {
    encode = map.gen_encode_symbols.dot('4x2'),
    scroll_line = '┃',
    scroll_view = '┃',
  },

  -- Window options
  window = {
    focusable = false,
    side = 'right',
    show_integration_count = false,
    width = 12,
    winblend = 0,
  },
})

vim.cmd [[highlight link MiniMapNormal LineNr]]
vim.cmd [[highlight link MiniMapSymbolLine Normal]]
vim.cmd [[highlight link MiniMapSymbolView LineNr]]

for _, key in ipairs({ 'n', 'N', '*', '#' }) do
  vim.keymap.set(
    'n',
    key,
    key ..
      '<Cmd>lua MiniMap.refresh({}, {lines = false, scrollbar = false})<CR>'
  )
end
