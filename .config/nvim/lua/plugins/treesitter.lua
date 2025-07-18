return {
	"nvim-treesitter/nvim-treesitter", 
	branch = 'master', 
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "vim", "vimdoc", "markdown", "markdown_inline", "java" },
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
