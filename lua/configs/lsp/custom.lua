local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")

if not configs.cls then
	configs.cls = {
		default_config = {
			cmd = { "cls" },
			filetypes = { "c", "cpp" },
			root_dir = function(fname)
				return lspconfig.util.find_git_ancestor(fname)
			end,
			settings = {},
		},
	}
end
