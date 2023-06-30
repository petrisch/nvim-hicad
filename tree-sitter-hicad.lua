-- Loading the treesitter grammar that is not builtin neovim

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

parser_config.hicad = {
          install_info = {
                      url = "https://github.com/petrisch/tree-sitter-hicad",
                      files = {"src/parser.c"},
                      branch = "main",
                      generate_requires_npm = false, -- if stand-alone parser without npm dependencies
                      requires_generate_from_grammar = true, -- if folder contains pre-generated src/parser.c
          },
          filetype = "mac", -- if filetype does not match the parser name
}

-- Possible future Autocomand when file has been detected
-- function hiCADMappings ()
-- 	local foo = 0
-- end

-- vim.api.nvim_create_autocmd( "FileType", {
--   pattern = { "MAC", "mac" },
--   callback = hiCADMappings,
--   group = hicad,
-- })
