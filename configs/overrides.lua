local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "svelte",
    "python"
  },
  indent = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    -- python
    "pyright",
    "autopep8",

    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "emmet-language-server",
    "typescript-language-server",
    -- "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  open_on_tab = true,
  update_cwd = true,
  filters = {
    dotfiles = false,
    custom = { "^node_modules$", "^.git$" },
  },
  filesystem_watchers = {
    enable = true,
  },
  renderer = {
    -- This option shows indent markers when folders are open
    indent_markers = {
      enable = true,
      inline_arrows = true,
    },
    icons = {
      show = {
        folder_arrow = false,
      },
      glyphs = {
        folder = { default = "", open = "", empty = "", empty_open = "", symlink = "" },
      },
    },
  },
  view = {
    width = 25,
    side = "left",
  },
  git = {
    enable = true,
  },
}

return M
