print("Hello from comment")
return {
  "numToStr/Comment.nvim",
  config = function()
    -- import safely
    local comment = require("Comment")
    print(comment)
    comment.setup()
  end,
}
