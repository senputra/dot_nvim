return {
  {
    'echasnovski/mini.icons',
    opts = {},
    lazy = true,
    specs = {
      { 'nvim-tree/nvim-web-devicons', enabled = false, optional = true },
    },
    init = function()
      package.preload['nvim-web-devicons'] = function()
        require('mini.icons').mock_nvim_web_devicons()
        return package.loaded['nvim-web-devicons']
      end
    end,
  },

  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- require('mini.comment').setup {
      --   -- Options which control module behavior
      --   options = {
      --     -- Function to compute custom 'commentstring' (optional)
      --     custom_commentstring = nil,
      --
      --     -- Whether to ignore blank lines when commenting
      --     ignore_blank_line = false,
      --
      --     -- Whether to ignore blank lines in actions and textobject
      --     start_of_line = false,
      --
      --     -- Whether to force single space inner padding for comment parts
      --     pad_comment_parts = true,
      --   },
      --
      --   -- Module mappings. Use `''` (empty string) to disable one.
      --   mappings = {
      --     -- Toggle comment (like `gcip` - comment inner paragraph) for both
      --     -- Normal and Visual modes
      --     comment = 'gc',
      --
      --     -- Toggle comment on current line
      --     comment_line = 'gcc',
      --
      --     -- Toggle comment on visual selection
      --     comment_visual = 'gc',
      --
      --     -- Define 'comment' textobject (like `dgc` - delete whole comment block)
      --     -- Works also in Visual mode if mapping differs from `comment_visual`
      --     textobject = 'gc',
      --   },
      --
      --   -- Hook functions to be executed at certain stage of commenting
      --   hooks = {
      --     -- Before successful commenting. Does nothing by default.
      --     pre = function() end,
      --     -- After successful commenting. Does nothing by default.
      --     post = function() end,
      --   },
      -- }
    end,
  },
}
