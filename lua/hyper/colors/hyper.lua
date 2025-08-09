local M = {}

local base = {
    black = '#000000',
    white = '#ffffff',
    red = '#ff0000',
    yellow = '#ffff00',
    green = '#33ff00',
    cyan = '#00ffff',
    blue = '#0066ff',
    magenta = '#cc00ff',
    light_gray = '#808080',
    gray = '#666666',
    dark_gray = '#3a3a3a',
    darker_gray = '#333333',
}

M.colors = base

function M.extend(overrides)
    for k, v in pairs(overrides) do
        overrides[k:lower()] = v
    end
    M.colors = vim.tbl_deep_extend('force', {}, base, overrides or {})
end

return M
