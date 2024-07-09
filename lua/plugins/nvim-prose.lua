return {
    "skwee357/nvim-prose",
    config = function()
        require("nvim-prose").setup {
            wpm = 200.0,
            filetypes = { 'markdown', 'asciidoc', 'text' },
            placeholders = {
                words = 'words',
                minutes = 'min'
            }
        }
    end

}
