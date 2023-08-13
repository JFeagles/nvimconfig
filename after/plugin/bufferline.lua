vim.opt.termguicolors = true
local bufferline = require("bufferline")
bufferline.setup {
    options = {
        numbers = "buffer_id",
        sort_by = "id"
    }
}
