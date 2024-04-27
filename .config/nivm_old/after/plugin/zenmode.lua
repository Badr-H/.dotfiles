vim.keymap.set("n", "<leader>z", function()
    require("zen-mode").setup {
        window = {
            width = 90, -- width of the Zen window
            options = {},
        },
        plugins = {
            options = {
                laststatus = 3, -- turn off the statusline in zen mode
            },
        },
    }
    require("zen-mode").toggle()
    vim.wo.number = true
    vim.wo.rnu = true
    ColorMyPencils()
end)
