
  -- note taking
  return{
    "vimwiki/vimwiki",
    init = function()
      vim.g.vimwiki_list = {
        { path = "~/vimwiki", syntax = "markdown", ext = ".md" },
      }
      vim.treesitter.language.register("markdown", "vimwiki")
    end,
  }
