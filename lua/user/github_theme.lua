local status_ok, github_theme = pcall(require, "github-theme")
if not status_ok then
  return
end

-- config goes here
github_theme.setup {
  transparent = true,
  theme_style = "dark_default",
  -- comment_style = "italic",
  keyword_style = "italic",
  function_style = "italic",
  -- variable_style = "italic",
  dark_float = true,
  sidebars = { "qf", "vista_kind", "terminal", "packer" },
}
