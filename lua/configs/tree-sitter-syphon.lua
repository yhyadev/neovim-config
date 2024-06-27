local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.syphon = {
    install_info = {
        url = "https://github.com/yhyadev/tree-sitter-syphon",
        files = { "src/parser.c" },
        rev = "f7e33f4c443ae3a0cada0f7a8981e0829aa52e83",
    },

    filetype = "sy"
}

vim.filetype.add({
    extension = {
        sy = "syphon"
    }
})
