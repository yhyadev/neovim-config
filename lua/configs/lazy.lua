local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- Theme
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
			})

			vim.cmd([[colorscheme catppuccin]])
		end,
	},

	-- Lsp
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"jose-elias-alvarez/null-ls.nvim",
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("configs.lsp")
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/cmp-cmdline",
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			require("configs.cmp")
		end,
	},
	{
		"L3MON4D3/LuaSnip",
		version = "2.*",
		build = "make install_jsregexp",
		dependencies = "rafamadriz/friendly-snippets",
	},
	-- File Explorer
	{
		"nvim-tree/nvim-tree.lua",
		keys = {
			{ "<leader>e", "<cmd>NvimTreeOpen <cr>", desc = "Open NvimTree" },
			{ "<C-n>", "<cmd>NvimTreeClose <cr>", desc = "Close NvimTree" },
		},
		config = function()
			require("configs.nvim-tree")
		end,
	},
	-- Icons
	{
		"nvim-tree/nvim-web-devicons",
		lazy = true,
	},
	-- Statusline
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("configs.lualine")
		end,
	},
	-- Indent Highlighter
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("indent_blankline").setup({
				show_current_context = true,
			})
		end,
	},
	-- UI Improves
	"nvim-telescope/telescope-ui-select.nvim",
	-- Finder
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		keys = {
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
			{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
			{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
		},
		cmd = "Telescope",
		dependencies = "nvim-lua/plenary.nvim",
		config = function()
			require("telescope").load_extension("ui-select")
		end,
	},
	-- Syntax Highlighter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("configs.treesitter")
		end,
	},
	-- (Arguments / Parameters) Highlighter
	{
		"m-demare/hlargs.nvim",
		config = function()
			require("hlargs").setup()
		end,
	},
	-- Auto Pairs {} () []
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
	-- Mini Terminal
	{
		"NvChad/nvterm",
		keys = {
			{
				"<leader>t",
				function()
					require("nvterm.terminal").toggle("horizontal")
				end,
				desc = "Toggle terminal",
			},
		},
		config = function()
			require("nvterm").setup()
		end,
	},
})
