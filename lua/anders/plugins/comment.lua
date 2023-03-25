-- import comment plugin safely
local setup, comment = pcall(require, "Comment")
if not setup then
  return
end

-- enable comment
comment.setup()

require("nvim-treesitter.configs").setup({
  context_commentstring = {
    enable = true,
    config = {
      javascript = {
        __default = "// %s",
        jsx_element = "{/* %s */}",
        jsx_fragment = "{/* %s */}",
        tsx_element = "{/* %s */}",
        tsx_fragment = "{/* %s */}",
        jsx_attribute = "// %s",
        comment = "// %s",
      },
    },
  },
})
