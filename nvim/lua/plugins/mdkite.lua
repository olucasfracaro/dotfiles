return {
  {
    "selimacerbas/mdkite.nvim",
    dependencies = {
      "selimacerbas/kitehost.nvim",
    },
    config = function()
      require("mdkite").setup({
        instance_mode = "takeover",
        port = 0,
        open_browser = true,
        default_theme = "dark",
        debounce_ms = 300,
      })
    end,
  },
}
