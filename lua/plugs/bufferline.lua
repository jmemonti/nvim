require("bufferline").setup{
  options = {
    diagnostics = "coc",
    diagnostics_indicator = function(count, level)
      local icon = level:match("error") and "" or ""
      return icon .. count
    end,
  }
}
