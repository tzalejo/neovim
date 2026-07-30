return {
  "numToStr/Comment.nvim",
  keys = {
    { "gc", desc = "Comment (operator)" },
    { "gcc", desc = "Comment current line" },
    { "gc", mode = "v", desc = "Comment selected text" },
  },
  opts = {
    pre_hook = function(ctx)
      local ts_ok, ts_comment = pcall(require, "ts_context_commentstring.integrations.comment_nvim")
      if ts_ok then
        local hook = ts_comment.create_pre_hook()
        local call_ok, result = pcall(hook, ctx)
        if call_ok and result and result ~= "" then return result end
      end
      local cs = vim.bo.commentstring
      if cs and cs ~= "" then return cs end
    end,
  },
}
