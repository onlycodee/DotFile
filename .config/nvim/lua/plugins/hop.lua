return {
  'smoka7/hop.nvim',
  -- Consider using a specific version tag for stability, e.g., 'v2.2.0'
  -- version = "v2.2.0",
  version = "*", -- For now, keep as is, but be aware of potential breaking changes if using '*'
  opts = {
    keys = 'etovxqpdygfblzhckisuran',
    -- You can add other Hop.nvim options here if needed, e.g.:
    case_sensitive = false,
    -- hint_offset = -1, -- for 't' and 'T' by default
  },
  config = function(_, opts) -- Ensure 'opts' is received as the second argument
    local hop = require('hop')

    -- !!! YOU NEED TO CALL THE SETUP FUNCTION TO INITIALIZE HOP WITH YOUR OPTS !!!
    hop.setup(opts)

    local directions = require('hop.hint').HintDirection

    vim.keymap.set('', '<leader>f', function()
      hop.hint_char1({ direction = directions.ALL, current_line_only = false })
    end, {remap=false, desc = "Hop to char (forward)"})
    vim.keymap.set('', '<leader>F', function()
      hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = false })
    end, {remap=false, desc = "Hop to char (backward)"})
    vim.keymap.set('', '<leader>t', function()
      hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false, hint_offset = -1 })
    end, {remap=false, desc = "Hop to char (till forward)"})
    vim.keymap.set('', '<leader>T', function()
      hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = false, hint_offset = 1 })
    end, {remap=false, desc = "Hop to char (till backward)"})

    -- Consider adding keymaps for other Hop commands like hint_words, etc.
    -- Example:
    vim.keymap.set({'n', 'v'}, '<leader>w', function() hop.hint_words() end, {remap=false, desc = "Hop words"})
    vim.keymap.set({'n', 'v'}, '<leader>W', function() hop.hint_words({ big_words = true }) end, {remap=false, desc = "Hop BIG words"})
  end
}
