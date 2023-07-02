-- Loading the treesitter grammar that is not builtin neovim

local v = vim
local M = {}

v.treesitter.language.register('hicad', 'hicad')  -- the hicad filetype will use the hicad parser and queries.

local function treesitterSetup()
end

function M.setup(options)
    M.options = v.tbl_extend("keep", options or {}, treesitterSetup())
end

local is_initialised = false
function M._init()
    if is_initialised then
        return
    end
    is_initialised = true

end

return M

-- Possible future Autocomand when file has been detected
-- function hiCADMappings ()
-- 	local foo = 0
-- end

-- vim.api.nvim_create_autocmd( "FileType", {
--   pattern = { "MAC", "mac" },
--   callback = hiCADMappings,
--   group = hicad,
-- })
