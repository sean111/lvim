return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "work",
        path = "~/vaults/work",
      },
    },

    -- see below for full list of options 👇
    notes_subdir = "notes",
    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      folder = "notes/daily",
      -- Optional, if you want to change the date format for the ID of daily notes.
      date_format = "%Y-%m-%d",
      -- Optional, if you want to change the date format of the default alias of daily notes.
      alias_format = "%B %-d, %Y",
      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      template = nil,
    },

    completion = {
      -- Set to false to disable completion.
      nvim_cmp = true,

      -- Trigger completion at 2 chars.
      min_chars = 2,

      -- Where to put new notes created from completion. Valid options are
      --  * "current_dir" - put new notes in same directory as the current buffer.
      --  * "notes_subdir" - put new notes in the default notes subdirectory.
      new_notes_location = "current_dir",

      -- Control how wiki links are completed with these (mutually exclusive) options:
      --
      -- 1. Whether to add the note ID during completion.
      -- E.g. "[[Foo" completes to "[[foo|Foo]]" assuming "foo" is the ID of the note.
      -- Mutually exclusive with 'prepend_note_path' and 'use_path_only'.
      prepend_note_id = true,
      -- 2. Whether to add the note path during completion.
      -- E.g. "[[Foo" completes to "[[notes/foo|Foo]]" assuming "notes/foo.md" is the path of the note.
      -- Mutually exclusive with 'prepend_note_id' and 'use_path_only'.
      prepend_note_path = false,
      -- 3. Whether to only use paths during completion.
      -- E.g. "[[Foo" completes to "[[notes/foo]]" assuming "notes/foo.md" is the path of the note.
      -- Mutually exclusive with 'prepend_note_id' and 'prepend_note_path'.
      use_path_only = false,
    },

    follow_url_func = function(url)
      if jit.os == "OSX" then
        vim.fn.jobstart({ "open", url })
      else
        vim.fn.jobstart({ "xdg-open", url })
      end
    end,
  },
}
