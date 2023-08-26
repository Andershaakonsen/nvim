return {
  "numToStr/Comment.nvim",
  config = function()
    -- import safely
    local comment = require("Comment")
    comment.setup()
  end,
}
