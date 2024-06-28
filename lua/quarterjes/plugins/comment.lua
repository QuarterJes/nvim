return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewfile" },
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    local comment = require("Comment")
    local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim") 

    -- enable comments
    comment.setup({
      pre_hook = ts_context_commentstring.create_pre_hook(),
    })

  end,
}
