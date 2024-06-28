return {
  "gbprod/substitute.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local substitute = require("substitute")
    substitute.setup()

    -- set keymaps
    local keymap = vim.keymap

    keymap.set("n", "s", substitute.operator, { desc = "Substitute with motions" })
    keymap.set("n", "ss", substitute.line, { desc = "Substitue line"})
    keymap.set("n" , "S", substitute.eol, { desc = "Substitute to end of line" })
    keymap.set("x", "s", substitute.visual, { desc = "Substitute in visual mode" })

  end,
}
