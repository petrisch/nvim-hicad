-- Loading the treesitter grammar that is not builtin neovim
local M = {}

function M.setup(options)
	vim.treesitter.language.register("hicad", "hicad")

	vim.api.nvim_create_autocmd("FileType", {
		pattern = { "MAC", "mac" },
		callback = function(args)
			vim.treesitter.start(args.buf, "hicad")
		end,
	})
end

return M
