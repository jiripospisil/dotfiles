vim.g.mapleader = " "
vim.keymap.set("n", "<C-BS>", "<cmd>wa<cr>", { silent = true })
vim.keymap.set("i", "<C-BS>", "<Esc><cmd>wa<cr>", { silent = true })
vim.keymap.set("n", "<cr>", "<cmd>nohlsearch<cr><cmd>ccl<cr>", { silent = true })
vim.keymap.set("n", "<leader><leader>", "<cmd>b#<cr>", { silent = true })

vim.keymap.set("n", "<C-H>", "<C-w>h<cr>", { silent = true })
vim.keymap.set("n", "<C-J>", "<C-w>j<cr>", { silent = true })
vim.keymap.set("n", "<C-K>", "<C-w>k<cr>", { silent = true })
vim.keymap.set("n", "<C-L>", "<C-w>l<cr>", { silent = true })

vim.keymap.set({ "n", "v" }, "<C-J>", "}", { silent = true })
vim.keymap.set({ "n", "v" }, "<C-K>", "{", { silent = true })
vim.keymap.set("n", "d<C-J>", "d}", { silent = true })
vim.keymap.set("n", "d<C-K>", "d{", { silent = true })
vim.keymap.set("i", "<C-D>", "<del>", { silent = true })
vim.keymap.set({ "n", "i", "t" }, "<C-Q>", "<C-\\><C-N><cmd>q<cr>", { silent = true })

vim.keymap.set("t", "<C-O>", "<C-\\><C-N><C-w>h", { silent = true })
vim.keymap.set("n", "<leader>C", "<cmd>vsp<cr><C-W>l<cmd>term<cr>", { silent = true })
vim.keymap.set("n", "<leader>c", "<cmd>term<cr>", { silent = true })

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.smarttab = true
vim.opt.number = true
vim.opt.scrolloff = 5
vim.opt.wrap = false
vim.opt.textwidth = 80
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.signcolumn = "no"

vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_scroll_animation_length = 0

--vim.lsp.set_log_level('debug')

-- Lazy.vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
  {
    "EdenEast/nightfox.nvim",
    config = function()
      vim.cmd("colorscheme nightfox")
      vim.cmd("hi! link CurSearch Search")
    end,
  },

  "tpope/vim-eunuch",
  "tpope/vim-surround",
  "tpope/vim-repeat",
  "tpope/vim-unimpaired",

  {
    "ojroques/nvim-osc52",
    config = function()
      vim.keymap.set("n", "<leader>y", require("osc52").copy_operator, {expr = true})
      vim.keymap.set("n", "<leader>yy", "<leader>y_", {remap = true})
      vim.keymap.set("v", "<leader>y", require("osc52").copy_visual)
    end,
  },

  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make"
  },

  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        defaults = {
          sorting_strategy = "ascending",
          layout_config = {
            prompt_position = "top",
          },
          mappings = {
            i = {
              ["<Esc>"] = "close",
            },
          },
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
          }
        }
      })

      require("telescope").load_extension("fzf")

      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>f", builtin.find_files, {})
      vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>b", builtin.buffers, {})
      vim.keymap.set({ "n", "v" }, "<leader>s", builtin.grep_string, {})
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup()

      vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<cr>", {})
    end,
  },

  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    dependencies = { "neovim/nvim-lspconfig", "hrsh7th/cmp-nvim-lsp", "hrsh7th/nvim-cmp", "L3MON4D3/LuaSnip" },
    config = function()
      local lsp_zero = require("lsp-zero")

      lsp_zero.on_attach(function(client, bufnr)
        client.server_capabilities.semanticTokensProvider = nil

        local opts = {buffer = bufnr}
        local bind = vim.keymap.set

        lsp_zero.default_keymaps(opts)
        bind("n", "<leader>m", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
        bind("n", "<leader>r", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
        bind("n", "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
        bind("n", "<leader>o", "<cmd>lua vim.lsp.buf.format()<cr>", opts)
        bind("n", "<leader>k", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
      end)

      local lspconfig = require("lspconfig")

      lspconfig.rust_analyzer.setup({
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              extraEnv = { CARGO_TARGET_DIR = ".ra_target" },
            }
          },
        },
      })

      lspconfig.zls.setup({})
    end,
  },

  {
    "terrortylor/nvim-comment",
    config = function()
      require("nvim_comment").setup()
    end,
  },
}


vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = {"*"},
  callback = function()
    local save_cursor = vim.fn.getpos(".")
    pcall(function() vim.cmd [[%s/\s\+$//e]] end)
    vim.fn.setpos(".", save_cursor)
  end,
})

vim.api.nvim_create_autocmd({ "TermOpen", "BufEnter", "WinEnter" }, {
  pattern = "term://*",
  callback = vim.schedule_wrap(function ()
    vim.cmd.startinsert()
  end),
})
